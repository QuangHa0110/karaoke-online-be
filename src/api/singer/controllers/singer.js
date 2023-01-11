"use strict";

/**
 * singer controller
 */

const { createCoreController } = require("@strapi/strapi").factories;

module.exports = createCoreController("api::singer.singer", ({ strapi }) => ({
  async findOne(ctx) {
    ctx.query = {
      ...ctx.query,
      populate: "*",
    };

    return await super.findOne(ctx);
  },
}));
