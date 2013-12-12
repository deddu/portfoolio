'use strict'

angular.module('portfoolioApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'portfoolioApp.services',
  'portfoolioApp'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .otherwise
        redirectTo: '/'
  .run( ($rootScope) ->
    $rootScope.$on('$viewContentLoaded',  () ->
      $(document).foundation()
    )
  )