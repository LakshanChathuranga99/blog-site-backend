const ResponseService = require('../common/ResponseService'); // Response service
const UserPostReaction = require('../models/reactionModels/userPostReaction');
const UserCommentReaction = require('../models/reactionModels/userCommentReaction');
const UserReplyReaction = require('../models/reactionModels/userReplyReaction'); // Reply model
const Types = require('../common/Types') // Model types

// Return model by type
function getModelByType(type) {
    // eslint-disable-next-line default-case
    switch (type) {
        case Types.UPR:
            return UserPostReaction;
        case Types.UCR:
            return UserCommentReaction;
        case Types.URR:
            return UserReplyReaction;
    }
}

// =============== Read Reaction ==========================

// Read reaction by UserId
exports.getUserPostReactionBy_UserID = function (searchingId, type, res) {
    const model = getModelByType(type);
    model.findAll({ where: { UserId: searchingId } })
        .then(post => {
            if (post !== null)
                ResponseService.generalPayloadResponse(null, post, res);
            else ResponseService.generalPayloadResponse(null, post, res, 404, "No record Found");
        })
        .catch(err => ResponseService.generalPayloadResponse(err, null, res));

}


// Read PostReaction by postID and UserId
exports.getUserPostReactionBy_UserID_PostID = function (paramsQuery, type, res) {
    const model = getModelByType(type);
    model.findAll({
        where: {
            postId: paramsQuery.postId,
            userId: paramsQuery.userId
        }
    })
        .then(post => {
            if (post !== null)
                ResponseService.generalPayloadResponse(null, post, res);
            else ResponseService.generalPayloadResponse(null, post, res, 404, "No record Found");
        })
        .catch(err => ResponseService.generalPayloadResponse(err, null, res));


}

// Read PostReaction by postID, UserId and commentID
exports.getUserPostReactionBy_UserID_PostID_commentID = function (paramsQuery, type, res) {
    const model = getModelByType(type);
    model.findAll({
        where: {
            postId: paramsQuery.postId,
            userId: paramsQuery.userId,
            commentID: paramsQuery.commentID
        }
    })
        .then(post => {
            if (post !== null)
                ResponseService.generalPayloadResponse(null, post, res);
            else ResponseService.generalPayloadResponse(null, post, res, 404, "No record Found");
        })
        .catch(err => ResponseService.generalPayloadResponse(err, null, res));


}

// =============== Check Reaction ==========================

// Checking PostReaction by postID and UserId
exports.getUserPostReactionBy_UserID_PostID = function (paramsQuery, type, res) {
    const model = getModelByType(type);
    model.findAll({
        where: {
            postId: paramsQuery.postId,
            userId: paramsQuery.userId
        }
    })
        .then(post => {
            if (post !== null)
                ResponseService.generalPayloadResponse(null, true, res);
            else ResponseService.generalPayloadResponse(null, false, res, 404, "No record Found");
        })
        .catch(err => ResponseService.generalPayloadResponse(err, null, res));


}

// Checking PostReaction by postID, UserId and commentID
exports.getUserPostReactionBy_UserID_PostID_commentID = function (paramsQuery, type, res) {
    const model = getModelByType(type);
    model.findAll({
        where: {
            postId: paramsQuery.postId,
            userId: paramsQuery.userId,
            commentID: paramsQuery.commentID
        }
    })
        .then(post => {
            if (post !== null)
                ResponseService.generalPayloadResponse(null, true, res);
            else ResponseService.generalPayloadResponse(null, false, res, 404, "No record Found");
        })
        .catch(err => ResponseService.generalPayloadResponse(err, null, res));


}

// Checking PostReaction by postID, UserId, commentID and replyID
exports.getUserPostReactionBy_UserID_PostID_commentID_ReplyID = function (paramsQuery, type, res) {
    const model = getModelByType(type);
    model.findAll({
        where: {
            postId: paramsQuery.postId,
            userId: paramsQuery.userId,
            commentID: paramsQuery.commentID,
            replyID: paramsQuery.replyID
        }
    })
        .then(post => {
            if (post !== null)
                ResponseService.generalPayloadResponse(null, true, res);
            else ResponseService.generalPayloadResponse(null, false, res, 404, "No record Found");
        })
        .catch(err => ResponseService.generalPayloadResponse(err, null, res));


}



