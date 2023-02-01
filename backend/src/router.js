/* eslint-disable import/no-extraneous-dependencies */
/* eslint-disable no-unused-vars */
const express = require("express");

const router = express.Router();

const userControllers = require("./controllers/userControllers");

router.post("/users", userControllers.register);

router.get("/users", userControllers.readAll);

module.exports = router;
