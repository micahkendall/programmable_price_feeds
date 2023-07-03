//// Examples of price feed providers

use aiken/transaction.{ScriptContext}
use programmable_price_feeds/types as feed_t

/// This only validates one feed (e.g Ada/USD)
validator {
  fn basic_feed(redeemer: feed_t.PriceFeed<Void>, _ctx: ScriptContext) -> Bool {
    let feed_t.PriceFeed { ratioX, ratioY, .. } = redeemer

    ratioX == ratioY
  }
}

/// This could potentially validate many named feeds
validator {
  fn named_feed(
    redeemer: feed_t.PriceFeed<ByteArray>,
    _ctx: ScriptContext,
  ) -> Bool {
    let feed_t.PriceFeed { ratioX, ratioY, tag } = redeemer
    ratioX == ratioY && tag == "ada/iUSD"
  }
}

/// This can validate multiple tagged feeds.
validator {
  fn tagged_feed(redeemer: feed_t.PriceFeed<Int>, _ctx: ScriptContext) -> Bool {
    let feed_t.PriceFeed { ratioX, ratioY, tag } = redeemer
    ratioX == ratioY && tag == 0
  }
}
