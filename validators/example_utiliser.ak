use aiken/transaction.{ScriptContext}
use programmable_price_feeds/types as feed_t
use programmable_price_feeds/util as feed

type MyRedeemer {
  price: (Int, Int),
}

validator(price_feed_script: feed_t.ScriptHash, price_feed_tag: Data) {
  fn spend_dollar_amount(
    _datum: Data,
    redeemer: MyRedeemer,
    ctx: ScriptContext,
  ) -> Bool {
    let check_feed =
      feed.validate(price_feed_script, ctx.transaction.redeemers, _)
    check_feed(
      feed_t.PriceFeed(redeemer.price.1st, redeemer.price.2nd, price_feed_tag),
    )
  }
}
