const express = require('express');
const routeConstant = require('../common/route-constant');
const config = require('../common/environment.json')[process.env.NODE_ENV || 'local'];

module.exports = function (app) {
    const API_PREFIX = '/api';

    app.get('/', function (req, res) {
        res.send('===========================================================\nWelcome to Blog Site  API - V - ' + config.VERSION+'\n==============================================================');
    });

    app.use(API_PREFIX + routeConstant.POST.PREFIX, require('./postRoute'));
    app.use(API_PREFIX + routeConstant.COMMENT.PREFIX, require('./commentRoute'));
    app.use(API_PREFIX + routeConstant.REPLY.PREFIX, require('./replyRoute'));
    // app.use('/api/replies', require('./replyRoute'));

    app.use(API_PREFIX + routeConstant.REACTION.PREFIX + routeConstant.REACTION.POST_REACTION.PREFIX, 
        require('./reactionRoutes/userPostReactionRoute'));

}