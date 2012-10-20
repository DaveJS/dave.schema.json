JSV = require('JSV').JSV
json = require('./test.json')
schema = require('./hal.json')
env = JSV.createEnvironment()
report = env.validate(json, schema)
console.dir(report)
