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

  findByEmail(email) {
    return this.connection.query(
      `select * from ${this.table} where email = ? `,
      [email]
    );
  }

  profilUpload(image, id) {
    return this.connection.query(
      `UPDATE ${this.table} SET profilpic = ? WHERE id = ?`,
      [image, id]
    );
  }

  find(user) {
    return this.connection.query(`select * from ${this.table} where id = ?`, [
      [user],
    ]);
  }

  findAll(user) {
    return this.connection.query(`select * from ${this.table}`, [[user]]);
  }

  update(user) {
    return this.connection.query(
      `update ${this.table} set username= ? , email = ? , adress =  ? , city = ? , postalCode = ? , hashedPassword = ? where id = ?`,
      [
        user.username,
        user.email,
        user.adress,
        user.city,
        user.postalCode,
        user.hashedPassword,
        user.id,
      ]
    );
  }

  resetPassword(password, email) {
    return this.connection.query(
      `UPDATE ${this.table} set hashedPassword = ? WHERE email = ?`,
      [password, email]
    );
  }

  checkExistingEmail(email) {
    return this.connection.query(
      `SELECT email FROM ${this.table} WHERE email = ?`,
      [email]
    );
  }

  selectFav(id, hasToken) {
    if (hasToken) {
      return this.connection.query(
        `SELECT u.id, fi.idUser, fi.idMovie, m.title,m.description_movie , m.trailer , m.publishedDate , m.movieImage ,m.isFavorite,m.isAcess, m.videoLink,m.limit_age, m.duration , mc.idCategory, category.name AS category FROM users AS u INNER JOIN favoris AS fi ON fi.idUser=u.id INNER JOIN movie as m ON fi.idMovie = m.id INNER JOIN movieCategory AS mc ON mc.idMovie=m.id
        INNER JOIN category ON mc.idCategory=category.id WHERE fi.idUser = u.id`,
        [id]
      );
    }
    return { error: "User is not authenticated, please login to proceed" };
  }
}

module.exports = UserManager;
