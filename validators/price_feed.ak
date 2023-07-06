//// Examples of price feed providers

use aiken/transaction.{ScriptContext, WithdrawFrom}
use programmable_price_feeds/types as feed_t

/// This only validates one feed (e.g Ada/USD)
validator {
  fn basic_feed(redeemer: feed_t.PriceFeeds<Data>, ctx: ScriptContext) -> Bool {
    expect WithdrawFrom(_) = ctx.purpose
    expect [feed_t.PriceFeed { ratioX, ratioY, .. }] = redeemer
    ratioX == ratioY
  }
}

/// This could potentially validate many named feeds
validator {
  fn named_feed(
    redeemer: feed_t.PriceFeeds<ByteArray>,
    ctx: ScriptContext,
  ) -> Bool {
    expect WithdrawFrom(_) = ctx.purpose
    expect [feed_t.PriceFeed { ratioX, ratioY, tag }] = redeemer
    ratioX == ratioY && tag == "ada/iUSD"
  }
}

/// This can validate multiple tagged feeds.
validator {
  fn tagged_feed(redeemer: feed_t.PriceFeeds<Int>, ctx: ScriptContext) -> Bool {
    expect WithdrawFrom(_) = ctx.purpose
    expect [feed_t.PriceFeed { ratioX, ratioY, tag }] = redeemer
    ratioX == ratioY && tag == 0
  }
}
