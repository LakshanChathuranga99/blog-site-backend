const Sequelize = new require('sequelize');
const db = require('../config/connection');
const DataTypes = require('sequelize/lib/data-types');

const Reply = db.define('reply', {
    id: {
        type: DataTypes.INTEGER,
        field: 'r_id',
        primaryKey: true
    },
    content: DataTypes.STRING,
    dateNTime: DataTypes.STRING,
    agreeCount: DataTypes.INTEGER,
    disagreeCount: DataTypes.INTEGER,
    postId: DataTypes.INTEGER,
    commentId: DataTypes.INTEGER
});

module.exports = Reply;

// r_id INT NOT NULL auto_increment,
// 	content VARCHAR(100) NOT null,
//     dateNTime VARCHAR(20) NOT NULL,
//     agreeCount INT DEFAULT 0,
//     disagreeCount INT DEFAULT 0,
//     postId INT NOT NULL,
//     commentId INT NOT NULL,
