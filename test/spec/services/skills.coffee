'use strict'

describe 'Service: Skills', () ->

  # load the service's module
  beforeEach module 'ChristmasrouletteApp'

  # instantiate service
  Skills = {}
  beforeEach inject (_Skills_) ->
    Skills = _Skills_

  it 'should do something', () ->
    expect(!!Skills).toBe true
