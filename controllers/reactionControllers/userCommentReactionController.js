const ResponseService = require('../../common/ResponseService'); // Response service
const UserCommentReaction = require('../../models/reactionModels/userCommentReaction'); // Reply model

// Read reaction by UserId
exports.getUserPostReactionBy_UserID = function (searchingId, res) {
    UserCommentReaction.findAll({ where: { UserId: searchingId } })
        .then(post => {
            if (post !== null)
                ResponseService.generalPayloadResponse(null, post, res);
            else ResponseService.generalPayloadResponse(null, post, res, 404, "No record Found");
        })
        .catch(err => ResponseService.generalPayloadResponse(err, null, res));

}


// Checking PostReaction by postID and UserId
exports.getUserPostReactionBy_UserID_PostID = function (paramsQuery, res) {
    UserCommentReaction.findAll({
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
    UserCommentReaction.findAll({
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



