/*
 * @Author: I3han
 */
const app = require('express');
const router = app.Router();
const Types = require('../../common/Types') // Model types
const routeConstant = require('../../common/route-constant');

// Post controller
const ReactionController = require('../../controllers/reactionController');

// CRUD Service
const CRUD = require('../../common/CRUD');

// Create
/**
 * @swagger
 * /api/reaction/post:
 *   post:
 *     description: create a post reaction
 *     tags:
 *      - PostReaction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.post("/", (req, res) => CRUD.create(req.body, Types.UPR, res));

//get all
/**
 * @swagger
 * /api/reaction/post:
 *   get:
 *     description: get all post reaction details
 *     tags:
 *      - PostReaction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Array of Post Reactions
 */
router.get('/', (req, res) => CRUD.getAll(Types.UPR, res));


// Delete by id
/**
 * @swagger
 * /api/reaction/post:id:
 *   delete:
 *     description: delete a post reaction by ID
 *     tags:
 *      - PostReaction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.delete(routeConstant.REACTION.POST_REACTION.DELETE_REACTION , (req, res) => CRUD.deleteById(req.params.id, Types.UPR, res));

// Update by id
/**
 * @swagger
 * api/reaction/post:id:
 *   put:
 *     description: update a post reaction by ID
 *     tags:
 *      - PostReaction
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.put(routeConstant.REACTION.POST_REACTION.PUT_REACTION , (req, res) => CRUD.updateById(req.params.id, Types.UPR, res));

module.exports = router;