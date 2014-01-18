'use strict'

angular.module('portfoolioApp')
  .controller 'LandingCtrl', ($scope,$location, $anchorScroll) ->
    $scope.gotoportfolio = () ->
      $location.hash('portfolio')
      $anchorScroll();
    $scope.gotoknowhow = () ->
      $location.hash('knowhow')
      $anchorScroll();
    $scope.gototop = () ->
      $location.hash('landing')
      $anchorScroll();

