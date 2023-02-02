/* eslint-disable camelcase */
/* eslint-disable no-restricted-syntax */

const models = require("../models");

const register = (req, res) => {
  const { name } = req.body;
  models.users
    .insert(name)
    .then(([rows]) => {
      res.send(rows);
    })

    .catch((err) => {
      console.error(err);
      if (err.code === "ER_DUP_ENTRY") {
        res.sendStatus(409);
      } else res.sendStatus(500);
    });
};

const edit = (req, res) => {
  const user = req.body;

  // TODO validations (length, format...)

  user.id = parseInt(req.params.id, 10);
  console.log(user);
  models.users
    .update(user)
    .then(([result]) => {
      if (result.affectedRows === 0) {
        res.sendStatus(404);
      } else {
        res.status(200).send("updated");
      }
    })
    .catch((err) => {
      console.error(err);
      res.status(500).send("Error editing the user");
    });
};

const read = (req, res) => {
  models.users
    .find(req.params.id)
    .then(([rows]) => {
      if (rows[0] == null) {
        res.sendStatus(404);
      } else {
        res.send(rows[0]);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const readAll = (req, res) => {
  models.users
    .findAll()
    .then(([rows]) => {
      if (rows[0] == null) {
        res.sendStatus(404);
      } else {
        res.send(rows);
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

const destroy = (req, res) => {
  console.log("back", req.body);
  const { name, score } = req.body;

  models.users
    .delete(name, score)
    .then(([result]) => {
      if (result.affectedRows === 0) {
        res.sendStatus(404);
      } else {
        res.status(200).send("updated");
      }
    })
    .catch((err) => {
      console.error(err);
      res.sendStatus(500);
    });
};

module.exports = {
  register,
  edit,
  destroy,
  read,
  readAll,
};
