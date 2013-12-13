'use strict'

angular.module('portfoolioApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'shopsService',
  'skillsService'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/knowhow',
        templateUrl: 'views/knowhow.html',
        controller: 'KnowhowCtrl'
      .otherwise
        redirectTo: '/'
  .run( ($rootScope) ->
    $rootScope.$on('$viewContentLoaded',  () ->
      $(document).foundation()
    )
  )