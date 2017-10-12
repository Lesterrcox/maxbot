# Description:
#   Reports wrongdoers.
#
# Commands:
#   maxbot report <name> - Reports <name> to HR.
#   maxbot report <name> for <thing> - Reports <name> to HR for <thing>.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.respond /report (.+?)( for (.+))?$/i, (res) ->
    res.send "1/2: Capturing IRC logs"
    res.send "2/2: Emailing HumanResources2@Company.com"

    if res.match[3]
      res.reply "#{res.match[1]} was reported to HR for #{res.match[3]}."
    else
      res.reply "#{res.match[1]} was reported to HR."
