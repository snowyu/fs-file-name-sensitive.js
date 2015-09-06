fs  = require 'fs'
path= require 'path'
tmp = require 'tmp'

tmp.setGracefulCleanup()

module.exports = fns = (aPath, aOptions)->
  vCached = aOptions.cache if aOptions
  aPath  = path.resolve aPath
  gCache = fns.cache
  if vCached isnt false and gCache.hasOwnProperty aPath
    result = gCache[aPath]
  else
    result = fns.caseSensitive aPath
    gCache[aPath]=result
  result

fns.cache = {}

fns.caseSensitive = isCaseSensitive = (aPath)->
    t = tmp.fileSync template: path.join aPath, '_tmp-XXXXXXXXX'
    vDirName  = path.dirname(t.name)
    vBaseName = path.basename(t.name)
    vBaseName = vBaseName.toUpperCase()
    result = !fs.existsSync(path.join(vDirName, vBaseName));
    t.removeCallback()
    result
