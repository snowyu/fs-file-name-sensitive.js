chai            = require 'chai'
sinon           = require 'sinon'
sinonChai       = require 'sinon-chai'
should          = chai.should()
expect          = chai.expect
assert          = chai.assert
chai.use(sinonChai)

setImmediate    = setImmediate || process.nextTick
fileNameSensitive = require '../src'

calledCount = 0
orgCaseSensitive = fileNameSensitive.caseSensitive
fileNameSensitive.caseSensitive = (aPath)-> #the sinon will reload coffee when spy!!
  calledCount++
  orgCaseSensitive aPath

mock            = require 'mock-fs'

describe 'fileNameSensitive', ->
  before ->
    fakeDirs = {}
    fakeDirs[__dirname]={}
    mock fakeDirs
  after ->
    mock.restore()
  beforeEach ->
    calledCount = 0
    fileNameSensitive.cache = {}
  it 'should check file name case-sensitive of a folder', ->
    result = fileNameSensitive __dirname
    fileNameSensitive.cache.should.have.property __dirname, result
    calledCount.should.be.equal 1
    result = fileNameSensitive __dirname
    calledCount.should.be.equal 1
    fileNameSensitive.cache.should.have.property __dirname, result

  it 'should check file name case-sensitive of a folder without cache', ->
    result = fileNameSensitive __dirname
    fileNameSensitive.cache.should.have.property __dirname, result
    calledCount.should.be.equal 1
    result = fileNameSensitive __dirname, cache:false
    calledCount.should.be.equal 2
