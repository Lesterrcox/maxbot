# Description:
#   Looks up Hawai`i Pidgin New Testament (Da Jesus Book) verses.
#
# Commands:
#   maxbot pidgin bible <book> <chapter> <verse> - Displays the specified verse from the Hawai`i Pidgin New Testament (Da Jesus Book) if it has been translated. Known issue: only section headings are displayed for verses immediately after section headings.
#
# Author:
#   Max Philips

bookUrls = [
  "http://www.pidginbible.org/conc/01GEN-hwc-",
  "http://www.pidginbible.org/conc/02EXO-hwc-",
  "http://www.pidginbible.org/conc/03LEV-hwc-",
  "",
  "http://www.pidginbible.org/conc/05DEU-hwc-",
  "",
  "",
  "http://www.pidginbible.org/conc/08RUT-hwc-",
  "",
  "",
  "http://www.pidginbible.org/conc/111KI-hwc-",
  "http://www.pidginbible.org/conc/122KI-hwc-",
  "",
  "",
  "http://www.pidginbible.org/conc/15EZR-hwc-",
  "http://www.pidginbible.org/conc/16NEH-hwc-",
  "http://www.pidginbible.org/conc/17EST-hwc-",
  "",
  "",
  "",
  "",
  "",
  "http://www.pidginbible.org/conc/23ISA-hwc-",
  "",
  "",
  "",
  "http://www.pidginbible.org/conc/27DAN-hwc-",
  "",
  "",
  "http://www.pidginbible.org/conc/30AMO-hwc-",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "http://www.pidginbible.org/conc/39MAL-hwc-",
  "",
  "http://www.pidginbible.org/conc/41MAT-hwc-",
  "http://www.pidginbible.org/conc/42MRK-hwc-",
  "http://www.pidginbible.org/conc/43LUK-hwc-",
  "http://www.pidginbible.org/conc/44JHN-hwc-",
  "http://www.pidginbible.org/conc/45ACT-hwc-",
  "http://www.pidginbible.org/conc/46ROM-hwc-",
  "http://www.pidginbible.org/conc/471CO-hwc-",
  "http://www.pidginbible.org/conc/482CO-hwc-",
  "http://www.pidginbible.org/conc/49GAL-hwc-",
  "http://www.pidginbible.org/conc/50EPH-hwc-",
  "http://www.pidginbible.org/conc/51PHP-hwc-",
  "http://www.pidginbible.org/conc/52COL-hwc-",
  "http://www.pidginbible.org/conc/531TH-hwc-",
  "http://www.pidginbible.org/conc/542TH-hwc-",
  "http://www.pidginbible.org/conc/551TI-hwc-",
  "http://www.pidginbible.org/conc/562TI-hwc-",
  "http://www.pidginbible.org/conc/57TIT-hwc-",
  "",
  "http://www.pidginbible.org/conc/59HEB-hwc-",
  "http://www.pidginbible.org/conc/60JAS-hwc-",
  "http://www.pidginbible.org/conc/611PE-hwc-",
  "http://www.pidginbible.org/conc/622PE-hwc-",
  "http://www.pidginbible.org/conc/631JN-hwc-",
  "",
  "",
  "",
  "http://www.pidginbible.org/conc/67REV-hwc-"
]

module.exports = (robot) ->

  robot.respond /pidgin bible (\d+) (\d+) (\d+)$/i, (msg) ->
    if msg.match[1] && msg.match[2] && msg.match[3]

      book = msg.match[1]
      chapter = msg.match[2]
      verse = msg.match[3]

      index = parseInt(book, 10) - 1

      if index < 1 || index > 66 || bookUrls[index] == ""
        msg.send "That book isn't written."
        return

      msg.http(bookUrls[index] + chapter + ".htm").get() (err, res, body) ->
        if res.statusCode isnt 200
          msg.send "That chapter is out of bounds (or a cosmic ray interfered with the http request)."
          return

        htmlVerse = body.match(///(.*C#{chapter}V#{verse}.*)///)

        if htmlVerse == null
          msg.send "That verse is out of bounds."
          return

        msg.send htmlVerse[1].replace /<[^>]*>/g, ""
