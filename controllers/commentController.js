const ResponseService = require('../common/ResponseService'); // Response service
const Comment = require('../models/Comment'); // Comment model

// Read a set
exports.getACommentSetForPostID = function (searchingId, res) {
    Comment.findAll({ where: { postId: searchingId } })
    .then(post => {
        if (post !== null)
            ResponseService.generalPayloadResponse(null, post, res);
        else ResponseService.generalPayloadResponse(null, post, res, 404, "No record Found");
    })
    .catch(err => ResponseService.generalPayloadResponse(err, null, res));

}