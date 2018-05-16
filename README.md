# cryptocurrency-trading

Profit using market making

# return

|Date|Balance (XBT)|Return (%)|
|-|-|-|
|2018-04-28|0.1|0|

# entity-relationship-model

![Entity relationship model](https://github.com/vyq/cryptocurrency-trading/blob/master/asset/entity-relationship-model.png)

# exchange-criteria

- No maker fees
- FIX or WebSocket API

# maker-fee

Sort by ascending %
- [BitMEX](https://www.bitmex.com/app/fees): -0.025
- [HitBTC](https://hitbtc.com/fees-and-limits): -0.01
- [GDAX](https://www.gdax.com/fees): 0
- [Bitfinex](https://www.bitfinex.com/fees): 0.1
- [Binance](https://www.binance.com/fees.html): 0.1
- [LBank](https://lbankinfo.zendesk.com/hc/zh-cn/articles/115002295114--%E8%B4%B9%E7%8E%87%E8%AF%B4%E6%98%8E): 0.1
- [OKEx](https://www.okex.com/pages/products/fees.html): 0.15
- [Huobi](https://www.huobi.com/p/about/about_detail): 0.2
- [Bitstamp](https://www.bitstamp.net/fee_schedule/): 0.25

# api

- [BitMEX](https://www.bitmex.com/app/apiOverview)
- [HitBTC](https://hitbtc.com/fix)
- [GDAX](https://docs.gdax.com/)
- [Bitfinex](https://docs.bitfinex.com/docs)
- [Binance](https://github.com/binance-exchange/binance-official-api-docs)
- [LBank](https://www.lbank.info/api/api-overview)
- [OKEx](https://github.com/okcoin-okex/API-docs-OKEx.com)
- [Huobi](https://github.com/huobiapi/API_Docs_en/wiki)
- [Bitstamp](https://www.bitstamp.net/fix/)

# development-environment

- Operating system: [Ubuntu 16.04](http://releases.ubuntu.com/16.04/)
- Editor: [Vim](https://www.vim.org/)
- Language: [C++17](https://en.wikipedia.org/wiki/C%2B%2B17) 
  ```
  g++ -std=c++1z -o cpp17 cpp17.cpp
  ./cpp17
  ```
- Test framework: [Catch](https://github.com/catchorg/Catch2)
- Libraries
  - [OpenSSL](https://github.com/openssl/openssl)
    ```
    sudo apt install libssl-dev
    ```
  - [uWebSockets](https://github.com/uNetworking/uWebSockets) 
    ```
    git clone https://github.com/uNetworking/uWebSockets.git
    cd uWebSockets
    make
    sudo make install
    cd ../cryptocurrency-trading/app/build
    ./websocket
    # Go to localhost:3000 in browser
    # Should see "Hello!"
    ```

# decision

- Research exchanges, starting from highest [volume](https://coinmarketcap.com/exchanges/volume/24-hour/all/)
- Use [C++17](https://en.wikipedia.org/wiki/C%2B%2B17) for speed
- Use canonical form when [drawing](https://www.draw.io/) entity relationship model for extensibility
- Use [Google C++ style guide](https://google.github.io/styleguide/cppguide.html) for consistency
- Start with BitMEX because of high volume, low maker fees, and 0.1 XBT given in test account
- Use [uWebSockets](https://github.com/uNetworking/uWebSockets) because of GitHub stars and sponsorship by BitMEX
- Use shared library for modularity

# takeaway

- [FIX](https://en.wikipedia.org/wiki/Financial_Information_eXchange) is a communications protocol, not an API
- Insert a hard tab into [makefile](https://en.wikipedia.org/wiki/Makefile) by pressing Ctrl + V, then Tab
- libssl-dev is required to compile libuWS.so
- libuWS depends on libssl and zlib

# to-do

- Test `hub.onMessage()` using Catch
- Check https://discordapp.com/channels/415851350384181248/415851470571962388
- Research uWS event loop
- Subscribe to XBT/USD market data
- Measure cycle time to place order and get order identifier
