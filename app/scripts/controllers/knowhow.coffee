'use strict'

angular.module('portfoolioApp')
  .controller 'KnowhowCtrl', ($scope, SkillsService) ->
    $scope.range = (x) ->
      return new Array(x)

    SkillsService.query((data,err)->
      $scope.skills = data
      $scope.fils = []
      for a in data
        if a['category'] not in $scope.fils
          $scope.fils.push(a['category'])
    )
