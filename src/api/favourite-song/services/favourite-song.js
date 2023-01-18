'use strict';

/**
 * favourite-song service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::favourite-song.favourite-song');
