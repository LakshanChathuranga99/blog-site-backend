const Sequelize = new require('sequelize');
const db = require('../../config/connection');
const DataTypes = require('sequelize/lib/data-types');

const UserPostReaction = db.define('userPostReaction', {
    id: {
        type: DataTypes.INTEGER,
        field: 'upr_id',
        primaryKey: true
    },
    postId: DataTypes.INTEGER,
    userId: DataTypes.INTEGER,
    reaction: DataTypes.STRING
});

module.exports = UserPostReaction;

// upr_id INT NOT NULL auto_increment,
// postId INT NOT null,
// userId INT NOT null,
// reaction VARCHAR(9) NOT null,
