# Description:
#   Looks up cryptocurrency prices using the CryptoCompare API.
#
# Commands:
#   maxbot crypto <space-delimited cryptocurrency symbols> - Displays the price in USD of all requested coins.
#   maxbot crypto <space-delimited cryptocurrency symbols> to <space-delimited currency symbols> - Displays the price in the requested currencies of all requested coins.
#   maxbot crypto - Displays some guidelines for the script - common coins and real world currencies to request. Full coin list: https://min-api.cryptocompare.com/data/all/coinlist. Currency guide: https://en.wikipedia.org/wiki/ISO_4217.
#
# Author:
#   Max Philips

module.exports = (robot) ->

  robot.respond /crypto$/i, (res) ->

    res.http("https://min-api.cryptocompare.com/data/all/coinlist").get() (err, response, body) ->

      json = JSON.parse(body)
      defaultWatchlist = json.DefaultWatchlist.CoinIs.split(',')
      cryptocurrencies = []

      for name,coin of json.Data
        if coin.Id in defaultWatchlist
          cryptocurrencies.push(coin.FullName)

      res.send "Popular coins: #{cryptocurrencies.join(", ")}"
      res.send "Full coinlist: https://min-api.cryptocompare.com/data/all/coinlist"
      res.send "Popular currencies: U.S. Dollar (USD), Euro (EUR), Great British Pound (GBP), Swiss Franc (CHF), Canadian Dollar (CAD)"
      res.send "Most currencies from https://en.wikipedia.org/wiki/ISO_4217 are available"

  robot.respond /crypto ((?:(?:\w+)(?: +)?)+) to ((?:(?:\w+)(?: +)?)+)$/i, (res) ->

    coins = res.match[1].split(" ")
    currencies = res.match[2].split(" ")

    res.http(pricemultiURL(coins, currencies)).get() (err, response, body) ->

      json = JSON.parse(body)

      if thereWasAnError(json)
        res.send "There was an error. Probably one of the symbols is wrong."
        return

      for coin,prices of json
        output = []
        for currency,price of prices
          output.push("#{price} #{currency}")

        res.send "#{coin}: #{output.join(" | ")}"

  robot.respond /crypto ((?:(?:(?!to)\w+)(?: +)?)+)$/i, (res) ->

    coins = res.match[1].split(" ")

    res.http(pricemultiURL(coins, ["USD"])).get() (err, response, body) ->

      json = JSON.parse(body)

      if thereWasAnError(json)
        res.send "There was an error. Probably one of the symbols is wrong."
        return

      for coin,prices of json
        output = ''
        for currency,price of prices
          output = "#{price} #{currency}"

        res.send "#{coin}: #{output}"

# Creates the CryptoCompare min-api pricemulti URL.
pricemultiURL = (coins, currencies) ->
  "https://min-api.cryptocompare.com/data/pricemulti?fsyms=#{encodeURI(coins.join(",").toUpperCase())}&tsyms=#{encodeURI(currencies.join(",").toUpperCase())}"

# Returns true if json has a Response key with value 'Error'
thereWasAnError = (json) ->
  response = json["Response"]
  return true if response is "Error"

  return false
