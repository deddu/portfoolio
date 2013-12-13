'use strict'

describe 'Controller: MainCtrl', () ->

  # load the controller's module
  beforeEach module 'portfoolioApp'

  MainCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MainCtrl = $controller 'MainCtrl', {
      $scope: scope
    }

#  it 'should attach a list of awesomeThings to the scope', () ->
#    expect(scope.shops.length).toBeGreaterThan 0
  it 'randomly picks one', () ->
    expect(scope.choose(['a','b']) in ['a','b']).toBeTruthy()
  it 'randomly picks one, especially when there is only one', () ->
    expect(scope.choose(['a'])).toBe 'a'

  it 'returns the next element of the array', () ->
    expect(scope.next(['a','b'],'a')).toBe 'b'
  it 'returns the next element of the array and knows of boundaries', () ->
    expect(scope.next(['b','a'],'a')).toBe 'b'

  it 'returns the previous element of the array', () ->
    expect(scope.prev(['b','a'],'a')).toBe 'b'
  it 'returns the previous element of the array and knows of boundaries', () ->
    expect(scope.prev(['a','b'],'a')).toBe 'b'
