# cryptocurrency-trading

Profit using market making

# to-do

- Set development environment
- [Learn C++](https://www.hackerrank.com/domains/cpp)
- Stream market data

# entity-relationship-model

![Entity relationship model](https://github.com/vyq/cryptocurrency-trading/blob/master/entity-relationship-model.png)

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
- Test framework: [Catch](https://github.com/catchorg/Catch2)

# test-c++17

```
g++ -std=c++1z -o cpp17 cpp17.cpp
./cpp17
```

# decision

- Research exchanges based on [volume](https://coinmarketcap.com/exchanges/volume/24-hour/all/)
- Use [C++17](https://en.wikipedia.org/wiki/C%2B%2B17)
- Use canonical form when [drawing](https://www.draw.io/) entity relationship model
- Use [Google C++ style guide](https://google.github.io/styleguide/cppguide.html)

# takeaway

- [FIX](https://en.wikipedia.org/wiki/Financial_Information_eXchange) is a communications protocol, not an API
