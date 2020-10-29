const Sequelize = new require('sequelize');
const db = require('../../config/connection');
const DataTypes = require('sequelize/lib/data-types');

const UserReplyReaction = db.define('userReplyReaction', {
    id: {
        type: DataTypes.INTEGER,
        field: 'urr_id',
        primaryKey: true
    },
    postId: DataTypes.INTEGER,
    userId: DataTypes.INTEGER,
    commentId: DataTypes.INTEGER,
    replyId: DataTypes.INTEGER,
    reaction: DataTypes.STRING
});

module.exports = UserReplyReaction;

// urr_id INT NOT NULL auto_increment,
// postId INT NOT null,
// userId INT NOT null,
// commentId INT NOT null,
// replyId INT NOT null,
// reaction VARCHAR(9) NOT null,
