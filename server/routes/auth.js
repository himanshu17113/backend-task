const express = require("express");
const { signup, signin } = require("../controllers/userController");
const User = require("../models/user");

authRouter = express.Router()


authRouter.post("/api/signup", signup);
authRouter.post("/api/signin", signin);

module.exports = authRouter;