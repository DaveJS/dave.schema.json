{ _ } = require('underscore')
fs    = require('fs')
path  = require('path')
yaml  = require('js-yaml')

task 'build', 'Build DaveJS HAL JSON Schema', (options) ->
  fs.readFile(path.join(__dirname, 'hal-schema.yaml'), 'utf-8', (err, content) ->
    throw err if err
    json = JSON.stringify(yaml.load(content))
    fs.writeFile(path.join(__dirname, 'hal-schema.json'), json, 'utf-8', (err) ->
      throw err if err
    )
  )
