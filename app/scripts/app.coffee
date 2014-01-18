'use strict'

angular.module('portfoolioApp', [
  'ui.knob',
  'ngCookies',
  'ngResource',
  'ngSanitize',
#  'ngRoute',
  'shopsService',
  'publicationsService',
  'skillsService'
])
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/landing.html'
        controller: 'MainCtrl'
      .when '/portfolio',
          templateUrl: 'views/main.html',
          controller: 'MainCtrl'
      .when '/knowhow',
        templateUrl: 'views/knowhow.html',
        controller: 'KnowhowCtrl'
      .when '/landing',
        templateUrl: 'views/landing.html',
        controller: 'LandingCtrl'
      .when '/publications',
        templateUrl: 'views/publications.html'
        controller: 'PublicationsCtrl'
      .otherwise
        redirectTo: '/'
  .run( ($rootScope) ->
    $rootScope.$on('$viewContentLoaded',  () ->
      $(document).foundation()
    )
  )