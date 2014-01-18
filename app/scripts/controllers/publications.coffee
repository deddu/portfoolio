'use strict'

angular.module('portfoolioApp')
  .controller 'PublicationsCtrl', ($scope, PublicationsService) ->
    $scope.pubs = []
    PublicationsService.query((data,err)->
      $scope.pubs = data
    )

