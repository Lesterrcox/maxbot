# Description:
#   Makes memes using https://memegen.link/api.
#
# Commands:
#   maxbot meme templates - Displays a link with available meme templates. The alias is the string at the end of each URL.
#   maxbot meme <alias> `<top text>` `<bottom text>` - Makes an <alias> meme with the provided <top text> and <bottom text>. Use `` to request no text for a slot.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.respond /meme templates/i, (res) ->
    res.reply "https://memegen.link/api/templates/"

  robot.respond /meme (.+) `(.*)` `(.*)`$/i, (res) ->
    res.http(createUrl(res.match)).get() (err, response, body) ->

      if response.statusCode is 302
        res.http(response.headers.location).get() (err2, response2, body2) ->
          res.send JSON.parse(body2)["direct"]["masked"]
        return

      res.send JSON.parse(body)["direct"]["masked"]

# Creates the memegen URL.
createUrl = (matches) ->
  "https://memegen.link/api/templates/#{encode(matches[1])}/#{encode(matches[2])}/#{encode(matches[3])}"

# URI encodes the argument. When the input is empty, returns an underscore.
encode = (arg) ->
  encodedURI = encodeURIComponent(arg)
  if encodedURI then return encodedURI else return "_"
