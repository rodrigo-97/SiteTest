const express = require("express")

const app = express()

app.get("/", (_,res) => res.send("Opa, deu certo!"))

app.listen(3000, () => console.log('server running at 3000'))