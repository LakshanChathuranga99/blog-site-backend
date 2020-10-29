const ResponseService = require('../../common/ResponseService'); // Response service
const UserReplyReaction = require('../../models/userReplyReaction'); // Reply model

// Read reaction by UserId
exports.getUserPostReactionBy_UserID = function (searchingId, res) {
    UserReplyReaction.findAll({ where: { UserId: searchingId } })
        .then(post => {
            if (post !== null)
                ResponseService.generalPayloadResponse(null, post, res);
            else ResponseService.generalPayloadResponse(null, post, res, 404, "No record Found");
        })
        .catch(err => ResponseService.generalPayloadResponse(err, null, res));

}


// Checking PostReaction by postID and UserId
exports.getUserPostReactionBy_UserID_PostID = function (paramsQuery, res) {
    UserReplyReaction.findAll({
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

// Checking PostReaction by postID, UserId and commentID
exports.getUserPostReactionBy_UserID_PostID_commentID = function (paramsQuery, res) {
    UserReplyReaction.findAll({
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


// Checking PostReaction by postID, UserId, commentID and replyID
exports.getUserPostReactionBy_UserID_PostID_commentID_ReplyID = function (paramsQuery, res) {
    UserReplyReaction.findAll({
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



