'use strict'

services = angular.module('portfoolioApp.services',['ngResource'])
services.factory 'Shops', ["$resource", ($resource)->
        $resource "/data/shops.json",{}
    ]
services.factory "shopsLoader", ["Shops", "$route", "$q", (Shops, $route, $q) ->
    ->
      delay = $q.defer()
      Shops.get
        url: $route.current.params.url
      , ((shops) ->
        delay.resolve shops
      ), ->
        delay.reject "unable to fetch url: " + $route.current.params.url

      delay.promise
  ]

