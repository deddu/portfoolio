'use strict'

angular.module('shopsService', ['ngResource'])
.factory('ShopsService', ($resource) ->
  return $resource('./data/shops.json');
  )

angular.module('publicationsService', ['ngResource'])
.factory('PublicationsService', ($resource) ->
    return $resource('./data/publications.json');
  )