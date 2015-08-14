fs = require('fs')
readline = require('readline')
google = require('googleapis')
googleAuth = require('google-auth-library')
calendar = google.calendar('v3')
SCOPES = [ 'https://www.googleapis.com/auth/calendar.readonly']
TOKEN_DIR = (process.env.HOME or process.env.HOMEPATH or process.env.USERPROFILE) + '/.credentials'
TOKEN_PATH = TOKEN_DIR + 'calendar-api-quickstart.json'

# Create an OAuth2 client with the given credentials,
# and then execute the given callback function.
#
# @param {Object} credentials The authorization client credentials.
# @param {function} callback The callback to call with the authorized client

autorize = (callback, robot) ->
  clientSecret = ""
  clientId = ""
  redirectUrl = "urn:ietf:wg:oauth:2.0:oob"
  auth = new googleAuth
  oAuth2Client = new (auth.OAuth2) (clientId, clientSecret, redirectUrl)

  #check if we have previously stored a token.


module.exports = (robot) ->
  robot.respond /ohayo/i, (msg) ->
    msg.reply 'ohayo---'
