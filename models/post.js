const Sequelize = new require('sequelize');
const db = require('../config/connection');
const DataTypes = require('sequelize/lib/data-types');

const Post = db.define('post', {
    id : {
        type: DataTypes.INTEGER,
        field: 'p_id',
        primaryKey: true
      },
    heading: DataTypes.STRING,
    content: DataTypes.STRING,
    dateNTime: DataTypes.STRING,
    excelentCount: DataTypes.INTEGER,
    goodCount: DataTypes.INTEGER,
    userId: DataTypes.INTEGER
});

module.exports = Post;

// p_id INT NOT NULL auto_increment,
//     heading VARCHAR(100) NOT null,
//     content TEXT NOT NULL,
//     dateNTime VARCHAR(20) NOT NULL,
//     excelentCount INT DEFAULT 0,
//     goodCount INT DEFAULT 0,
//     userId INT NOT NULL,
