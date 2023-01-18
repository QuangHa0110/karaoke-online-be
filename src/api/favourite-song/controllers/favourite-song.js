"use strict";

/**
 * favourite-song controller
 */

const { createCoreController } = require("@strapi/strapi").factories;
const parseBody = (ctx) => {
  if (ctx.is("multipart")) {
    return parseMultipartData(ctx);
  }

  const { data } = ctx.request.body || {};

  return { data };
};
module.exports = createCoreController(
  "api::favourite-song.favourite-song",
  ({ strapi }) => ({
    async create(ctx) {
      const { data, files } = parseBody(ctx);
      const entity = await strapi.entityService.findMany(
        "api::favourite-song.favourite-song",
        {
          filters: {
            song: {
              id: {
                $eq: data.song,
              },
            },
            user: {
              id: {
                $eq: data.user,
              },
            },
          },
        }
      );
      if (entity.length > 0) {
        return ctx.badRequest("Favourite song is existing");
      }

      return await super.create(ctx);
    },
  })
);
