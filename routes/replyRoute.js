/*
 * @Author: I3han
 */
const app = require('express');
const router = app.Router();
const Types = require('../common/Types') // Model types

// Post controller
const ReplyController = require('../controllers/replyController');

// CRUD Service
const CRUD = require('../common/CRUD');

// Create
/**
 * @swagger
 * /api/replies:
 *   post:
 *     description: create a Reply details
 *     tags:
 *      - Reply
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.post('/', (req, res) => CRUD.create(req.body, Types.REPLY, res));

//get all
/**
 * @swagger
 * /api/replies:
 *   get:
 *     description: get all Reply details
 *     tags:
 *      - Reply
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Array of Reply list
 */
router.get('/', (req, res) =>CRUD.getAll(Types.REPLY, res));


//get a set from postID
/**
 * @swagger
 * /api/replies/set/:searchingPostID:
 *   get:
 *     description: get set of Reply
 *     tags:
 *      - Reply
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Array of Reply list
 */
router.get('/set/:id', (req, res) =>ReplyController.getAReplySetForPostID(req.params.id, res));

//get a set from postID and commentId
/**
 * @swagger
 * /api/replies/query?postId=X&commentId=X:
 *   get:
 *     description: get set of Reply
 *     tags:
 *      - Reply
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Array of Reply list
 */
router.get('/query/', (req, res) =>ReplyController.getAReplySetForPostIDNCommentID(req.query, res));

// Get by id
/**
 * @swagger
 * /api/replies/:id:
 *   get:
 *     description: get Reply details by id
 *     tags:
 *      - Reply
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: A Reply
 */
router.get('/:id', (req, res) => CRUD.getById(req.params.id, Types.REPLY, res));

// Delete by id
/**
 * @swagger
 * /api/replies:
 *   delete:
 *     description: delete a Reply by ID
 *     tags:
 *      - Reply
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.delete('/:id', (req, res) => CRUD.deleteById(req.params.id, Types.REPLY, res));

// Update by id
/**
 * @swagger
 * /api/replies/:id:
 *   put:
 *     description: update a Reply by ID
 *     tags:
 *      - Reply
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.put('/:id', (req, res) => ReplyController.updateById(req.params.id, res));

module.exports = router;