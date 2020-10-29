const Sequelize = new require('sequelize');
const db = require('../../config/connection');
const DataTypes = require('sequelize/lib/data-types');

const UserCommentReaction = db.define('userCommentReaction', {
    id: {
        type: DataTypes.INTEGER,
        field: 'ucr_id',
        primaryKey: true
    },
    postId: DataTypes.INTEGER,
    userId: DataTypes.INTEGER,
    commentId: DataTypes.INTEGER,
    reaction: DataTypes.STRING
});

module.exports = UserCommentReaction;

// ucr_id INT NOT NULL auto_increment,
// postId INT NOT null,
// userId INT NOT null,
// commentId INT NOT null,
// reaction VARCHAR(9) NOT null,
