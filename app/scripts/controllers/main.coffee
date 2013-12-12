'use strict'

c = angular.module('portfoolioApp')
c.controller 'MainCtrl', ($scope, Shops) ->
    $scope.choose = (arr) ->
      return arr[Math.floor(Math.random()*arr.length)]
    $scope.prev = (arr, el) ->
      return arr[((arr.indexOf(el)-1)+arr.length)%arr.length]
    $scope.next = (arr, el) ->
      return arr[((arr.indexOf(el)+1)+arr.length)%arr.length]
    loading = true

    Shops.query( (data, err) ->
      $scope.shops = data
      loading = false
    )

    if !loading
      $scope.link = ($scope.choose($scope.shops))
    else
      $scope.link = {
        "name":"Chematica",
        "url":"http://www.chematica.net",
        "thumbnail":"../images/chematicanet.png",
        "description":"Northwestern University automation of retrosynthesis"
      }

    $scope.gimmeOne = () ->
      $scope.link = $scope.choose($scope.shops)
    $scope.gimmePrev = () ->
      $scope.link = $scope.prev($scope.shops,$scope.link)
    $scope.gimmeNext = () ->
      $scope.link = $scope.next($scope.shops,$scope.link)