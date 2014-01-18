'use strict'

describe 'Controller: PublicationsCtrl', () ->

  # load the controller's module
  beforeEach module 'christmasrouletteApp'

  PublicationsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PublicationsCtrl = $controller 'PublicationsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
