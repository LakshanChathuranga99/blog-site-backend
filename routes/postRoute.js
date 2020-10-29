/*
 * @Author: I3han
 */
const app = require('express');
const router = app.Router();
const Types = require('../common/Types') // Model types
const routeConstant = require('../common/route-constant');

// Post controller
const PostController = require('../controllers/postController');

// CRUD Service
const CRUD = require('../common/CRUD');

// Create
/**
 * @swagger
 * /api/posts:
 *   post:
 *     description: create a post details
 *     tags:
 *      - Post
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.post("/", (req, res) => CRUD.create(req.body, Types.POST, res));

//get all
/**
 * @swagger
 * /api/posts:
 *   get:
 *     description: get all post details
 *     tags:
 *      - Post
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Array of Post list
 */
router.get('/', (req, res) => CRUD.getAll(Types.POST, res));

// Get by id
/**
 * @swagger
 * /api/posts/:id:
 *   get:
 *     description: get post details by id
 *     tags:
 *      - Post
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: A post
 */
router.get(routeConstant.POST.GET_POST , (req, res) => CRUD.getById(req.params.id, Types.POST, res));

// Delete by id
/**
 * @swagger
 * /api/posts:
 *   delete:
 *     description: delete a post by ID
 *     tags:
 *      - Post
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.delete(routeConstant.POST.DELETE_POST , (req, res) => CRUD.deleteById(req.params.id, Types.POST, res));

// Update by id
/**
 * @swagger
 * /api/posts/:id:
 *   put:
 *     description: update a post by ID
 *     tags:
 *      - Post
 *     produces:
 *       - application/json
 *     responses:
 *       200:
 *         description: Responce Message
 */
router.put(routeConstant.POST.PUT_POST , (req, res) => CRUD.updateById(req.params.id, Types.POST, res));

module.exports = router;