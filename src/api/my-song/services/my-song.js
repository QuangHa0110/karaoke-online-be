'use strict';

/**
 * my-song service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::my-song.my-song');
