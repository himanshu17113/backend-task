const express = require("express");
const { setup } = require("../controllers/setupController");
//const auth = require("../middlewares/auth");
const Docment = require("../models/profile");

setupRouter = express.Router()


setupRouter.post("/signup/profile",setup)

module.exports = setupRouter