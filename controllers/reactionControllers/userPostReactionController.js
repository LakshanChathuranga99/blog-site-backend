const ResponseService = require('../../common/ResponseService'); // Response service
const UserPostReaction = require('../../models/userPostReaction'); // Reply model

// Read reaction by UserId
exports.getUserPostReactionBy_UserID = function (searchingId, res) {
    UserPostReaction.findAll({ where: { postId: searchingId } })
        .then(post => {
            if (post !== null)
                ResponseService.generalPayloadResponse(null, post, res);
            else ResponseService.generalPayloadResponse(null, post, res, 404, "No record Found");
        })
        .catch(err => ResponseService.generalPayloadResponse(err, null, res));

}

// Checking PostReaction by postID and UserId
exports.getUserPostReactionBy_UserID_PostID = function (paramsQuery, res) {
    UserPostReaction.findAll({
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

