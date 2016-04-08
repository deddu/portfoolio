'use strict'

angular.module('portfoolioApp', [
  'ui.knob',
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute',
  'ngAnimate',
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
         templateUrl: 'views/portfolio.html',
         controller: 'MainCtrl'
     .when '/skills',
       templateUrl: 'views/skills.html',
#        controller: 'KnowhowCtrl'
#      .when '/landing',
#        templateUrl: 'views/landing.html',
#        controller: 'LandingCtrl'
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
