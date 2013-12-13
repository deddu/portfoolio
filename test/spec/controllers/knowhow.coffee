'use strict'

describe 'Controller: KnowhowCtrl', () ->

  # load the controller's module
  beforeEach module 'christmasrouletteApp'

  KnowhowCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    KnowhowCtrl = $controller 'KnowhowCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', () ->
    expect(scope.awesomeThings.length).toBe 3
