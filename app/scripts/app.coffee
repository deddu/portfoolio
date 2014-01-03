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
        templateUrl: 'views/landing.html'
        controller: 'LandingCtrl'
      .when '/portfolio',
          templateUrl: 'views/main.html',
          controller: 'MainCtrl'
      .when '/knowhow',
        templateUrl: 'views/knowhow.html',
        controller: 'KnowhowCtrl'
      .when '/landing',
        templateUrl: 'views/landing.html',
        controller: 'LandingCtrl'
      .otherwise
        redirectTo: '/'
  .run( ($rootScope) ->
    $rootScope.$on('$viewContentLoaded',  () ->
      $(document).foundation()
    )
  )