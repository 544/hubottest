module.exports = (robot) ->
  robot.respond /foo/i, (msg) ->
    msg.reply 'bar'
