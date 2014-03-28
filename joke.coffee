# Description
#   Chuck Norris Jokes
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot joke - Returns a random Chuck Norris Joke
#
# Author:
#   dinks

URL = "http://api.icndb.com/jokes/random"

module.exports = (robot) ->

  robot.respond /joke/i, (message) ->
    message.http(URL)
      .get() (err, res, body) ->
        message.send JSON.parse(body).value.joke

