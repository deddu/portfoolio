'use strict'

angular.module('skillsService', ['ngResource'])
.factory('SkillsService', ($resource) ->
    return $resource('/data/skills.json');
  )

