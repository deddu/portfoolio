'use strict'

angular.module('shopsService', ['ngResource'])
.factory('ShopsService', ($resource) ->
  return $resource('/data/shops.json');
  )

