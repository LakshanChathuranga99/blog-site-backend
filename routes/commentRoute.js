/*
 * @Author: I3han
 */
const app = require('express');
const router = app.Router();
const Types = require('../common/Types') // Model types
const routeConstant = require('../common/route-constant');

// Post controller
const CommentController = require('../controllers/commentController');

// CRUD Service
const CRUD = require('../common/CRUD');

// Create
/**
 * @swagger
 * /api/comments:
 *   post:
 *     description: create a comment details
 *     tags:
 *      - Comment
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.post('/', (req, res) => CRUD.create(req.body, Types.COMMENT, res));

//get all
/**
 * @swagger
 * /api/comments:
 *   get:
 *     description: get all comment details
 *     tags:
 *      - Comment
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Array of comment list
 */
router.get('/', (req, res) =>CRUD.getAll(Types.COMMENT, res));

// Get by id
/**
 * @swagger
 * /api/comments/:id:
 *   get:
 *     description: get comment details by id
 *     tags:
 *      - Comment
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: A comment
 */
router.get(routeConstant.COMMENT.GET_COMMENT, (req, res) => CRUD.getById(req.params.id, Types.COMMENT, res));

//get a set
/**
 * @swagger
 * /api/comments/set/:searchingPostID:
 *   get:
 *     description: get set of comments
 *     tags:
 *      - Comment
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Array of comment list
 */
router.get(routeConstant.COMMENT.GET_SET_OF_COMMENTS_POSTID, (req, res) =>CommentController.getACommentSetForPostID(req.params.id, res));

// Delete by id
/**
 * @swagger
 * /api/comments:
 *   delete:
 *     description: delete a comment by ID
 *     tags:
 *      - Comment
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.delete(routeConstant.COMMENT.DELETE_COMMENT, (req, res) => CRUD.deleteById(req.params.id, Types.COMMENT, res));

// Update by id
/**
 * @swagger
 * /api/comments/:id:
 *   put:
 *     description: update a comment by ID
 *     tags:
 *      - Comment
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.put(routeConstant.COMMENT.PUT_COMMENT, (req, res) => CommentController.updateById(req.params.id, res));

module.exports = router;