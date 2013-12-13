'use strict'

angular.module('portfoolioApp')
  .controller 'KnowhowCtrl', ($scope, SkillsService) ->
    $scope.range = (x) ->
      return new Array(x)
    Array::unique = ->
      output = {}
      output[@[key]] = @[key] for key in [0...@length]
      value for key, value of output


    $scope.selected = []
    $scope.fils = []
    SkillsService.query((data,err)->
      $scope.skills = data

      for a in data
        if a['category'] not in $scope.fils
          $scope.fils.push(a['category'])
      $scope.selected = (x for x in $scope.fils)
    )
    $scope.is_selected =  (el) ->
      return if el in $scope.selected then "active" else ""

    $scope.toggle_selected =  (el) ->
      if el in $scope.selected
        console.log 'removing ' +el
        $scope.selected.splice($scope.selected.indexOf(el),1)
      else
        console.log 'adding ' +el
        $scope.selected.push(el)

    $scope.matchCategory = (el) ->
      return if el.category in $scope.selected then true else false