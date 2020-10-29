const ResponseService = require('../common/ResponseService'); // Response service
const Reply = require('../models/Reply'); // Reply model

// Read a set from postID
exports.getAReplySetForPostID = function (searchingId, res) {
    Reply.findAll({ where: { postId: searchingId } })
    .then(post => {
        if (post !== null)
            ResponseService.generalPayloadResponse(null, post, res);
        else ResponseService.generalPayloadResponse(null, post, res, 404, "No record Found");
    })
    .catch(err => ResponseService.generalPayloadResponse(err, null, res));

}

// Read a set from postID and commentID
exports.getAReplySetForPostIDNCommentID = function (paramsQuery, res) {
    Reply.findAll({ where: { postId: paramsQuery.postId , commentId: paramsQuery.commentId } })
    .then(post => {
        if (post !== null)
            ResponseService.generalPayloadResponse(null, post, res);
        else ResponseService.generalPayloadResponse(null, post, res, 404, "No record Found");
    })
    .catch(err => ResponseService.generalPayloadResponse(err, null, res));

}