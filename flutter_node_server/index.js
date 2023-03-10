const express = require("express");

const app = express();
const port = process.env.PORT || 5000;

// use middleware
app.use(express.json()); //body pars than data show

//encode the url
app.use(
  express.urlencoded({
    extended: true,
  })
);

const productData = [];

//---------server site---------------
app.post("/api/add_product", async (req, res) => {
  const product = req.body;
  console.log("Result : ", req.body);

  const pdata = {
    "id": productData.length + 1,
    "pname": product.pname,
    "pprice": product.pprice,
    "pdes": product.pdes,
  };
  productData.push(pdata);
  console.log("Final: ", pdata);

  res.status(200).send({
    status_code: 200,
    message: "Product added successfully",
    product: pdata,
  });
});

app.listen(port, () => {
  console.log("CRUD Server is running");
});