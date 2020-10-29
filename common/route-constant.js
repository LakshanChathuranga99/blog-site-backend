module.exports = {

    POST: {
        PREFIX: '/posts',
        GET_POST: "/:id",
        PUT_POST: "/:id",
        DELETE_POST: "/:id",
        GET_POST_WITH_PAGINATION: "/pagination/:pageId",
    },

    COMMENT: {
        PREFIX: "/comments",
        GET_COMMENT: "/:id",
        PUT_COMMENT: "/:id",
        DELETE_COMMENT: "/:id",
        GET_SET_OF_COMMENTS_POSTID: "/set/:id",
        GET_COMMENT_WITH_PAGINATION: "/pagination/:pageId",
    },

    REPLY: {
        PREFIX: "/replies",
        GET_REPLY: "/:id",
        PUT_REPLY: "/:id",
        DELETE_REPLY: "/:id",
        GET_SET_OF_REPLIES_POSTID: "/set/:id",
        GET_SET_OF_REPLIES_QUERY: "/query",
        GET_COMMENT_WITH_PAGINATION: "/pagination/:pageId",
    },

    REACTION: {
        PREFIX: "/reaction",
        POST_REACTION: {
            PREFIX: "/post",
            GET_REACTION: "/:id",
            PUT_REACTION: "/:id",
            DELETE_REACTION: "/:id",
            GET_SET_OF_REACTION_QUERY: "/query",
            GET_SET_OF_REACTION_CONFIRM_BY_QUERY: "/confirm",
        },

        COMMENT_REACTION: {
            PREFIX: "/comment",
            GET_REACTION: "/:id",
            PUT_REACTION: "/:id",
            DELETE_REACTION: "/:id",
            GET_SET_OF_REACTION_QUERY: "/query",
            GET_SET_OF_REACTION_CONFIRM_BY_QUERY: "/confirm",
        },

        REPLY_REACTION: {
            PREFIX: "/reply",
            GET_REACTION: "/:id",
            PUT_REACTION: "/:id",
            DELETE_REACTION: "/:id",
            GET_SET_OF_REACTION_QUERY: "/query",
            GET_SET_OF_REACTION_CONFIRM_BY_QUERY: "/confirm",
        }

    }


}