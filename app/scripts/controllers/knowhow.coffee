'use strict'

angular.module('portfoolioApp')
  .controller 'KnowhowCtrl', ($scope, SkillsService) ->
    $scope.range = (x) ->
      return new Array(x)
    unique = (a) ->
      output = {}
      output[a[key]] = a[key] for key in [0...a.length]
      value for key, value of output


    $scope.catselected = []
    $scope.typeselected =[]
    $scope.fields = []

    SkillsService.query((data,err)->
      $scope.skills = data
      $scope.fields = ({category:x.category,type:x.type} for x in data)
      $scope.catfields = unique(x.category for x in $scope.fields)
      $scope.typefields = unique(x.type for x in $scope.fields)
      $scope.catselected = unique(x.category for x in $scope.fields)
      $scope.typeselected = unique(x.type for x in $scope.fields)
    )

    $scope.is_selected =  (el,arr) ->
      #console.log el,arr
      return if el in arr then "active" else ""

    $scope.toggle_selected =  (el,arr) ->
      #console.log el,arr
      if el in arr
        arr.splice(arr.indexOf(el),1)
      else
       # console.log 'adding ' +el
        arr.push(el)

    $scope.getColor = (typ) ->
      col = Math.floor($scope.typefields.indexOf(typ)*255/$scope.typefields.length)
      return "rgba(123,123,#{col},1)"




    $scope.matchCategory = (stuff) ->
      return if stuff.category in $scope.catselected then true else false

    $scope.matchType = (stuff) ->
      return if stuff.type in $scope.typeselected then true else false
