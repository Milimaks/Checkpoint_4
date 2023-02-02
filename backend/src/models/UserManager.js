/* eslint-disable no-template-curly-in-string */
/* eslint-disable prettier/prettier */
const AbstractManager = require("./AbstractManager");

class UserManager extends AbstractManager {
  constructor() {
    super({ table: "users" });
  }

  // Insertion dans la database utilisée pour register

  insert(name) {
    return this.connection.query(
      `insert into ${this.table} (name) values (?)`,
      [name]
    );
  }

  delete(name, score) {
    return this.connection.query(
      `delete from ${this.table} where name = ? and score = ?`,
      [name, score]
    );
  }

  find(user) {
    return this.connection.query(`select * from ${this.table} where id = ?`, [
      [user],
    ]);
  }

  update(user) {
    return this.connection.query(
      `update ${this.table} set score= ?  where users.id = ?`,
      [user.score, user.id]
    );
  }
}

module.exports = UserManager;
