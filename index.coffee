# Description:
#  Query Acquia cloud environments
#
# Commands:
#   hubot ac envs - list Acquia Cloud environments and versions
#   hubot ac servers ENV - list Acquia Cloud environments and versions
#
#
acquia = require('acquia-cloud-client')
creds = {
  'username' : process.env.ACQUIA_USERNAME,
  'password' : process.env.ACQUIA_PASSWORD
}
api = new acquia(creds)
module.exports = (robot) ->
  robot.respond /ac envs/i, (res) ->
    api.envs process.env.ACQUIA_SITE, (err,envs)->
      if err
        res.reply("error looking up envs")
        return
      res.reply "env: " + site.name + ", version: " + site.vcs_path for site in envs
  robot.respond /ac servers (.*)/i, (res) ->
    env = res.match[1].trim()
    api.servers process.env.ACQUIA_SITE , env , (err, servers) ->
      if err
        res.reply("error looking up envs")
        return
      res.reply "name " + server.fqdn for server in servers
