"use strict";

/**
 * song controller
 */

const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController("api::song.song", ({ strapi }) => ({
  async findOne(ctx) {
    ctx.query = {
      ...ctx.query,
      populate: "*",
    };

    return await super.findOne(ctx);
  },
}));
