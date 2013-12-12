'use strict'

describe 'Service: Shops', () ->

  # load the service's module
  beforeEach module 'ChristmasrouletteApp'

  # instantiate service
  Shops = {}
  beforeEach inject (_Shops_) ->
    Shops = _Shops_

  it 'should do something', () ->
    expect(!!Shops).toBe true
