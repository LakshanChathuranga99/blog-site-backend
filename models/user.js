const Sequelize = new require('sequelize');
const db = require('../config/connection');
const DataTypes = require('sequelize/lib/data-types');

const User = db.define('user', {
    id: {
        type: DataTypes.INTEGER,
        field: 'u_id',
        primaryKey: true
    },
    firstName: DataTypes.STRING,
    lastName: DataTypes.STRING,
    email: DataTypes.STRING,
    isAdmin: DataTypes.INTEGER,
    isUser: DataTypes.INTEGER,
    avatarImageUrl: DataTypes.STRING,
    ranking: DataTypes.STRING,
    password: DataTypes.STRING,
});

module.exports = User;

// u_id INT NOT NULL auto_increment,
// 	firstName VARCHAR(10) NOT null,
//     lastName VARCHAR(10) NOT null,
//     email VARCHAR(50) NOT null,
//     isAdmin tinyint(4) NOT NULL DEFAULT '0',
//     isUser tinyint(4) NOT NULL DEFAULT '1',
//     avatarImageUrl VARCHAR(100),
//     ranking VARCHAR(5),
//     password VARCHAR(50) NOT null,