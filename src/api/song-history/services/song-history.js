'use strict';

/**
 * song-history service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::song-history.song-history');
