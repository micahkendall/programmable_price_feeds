use aiken/dict
use aiken/transaction.{WithdrawFrom}
use aiken/transaction/credential.{Inline, ScriptCredential}
use programmable_price_feeds/types

/// If you can reduce the cost of validate, I encourage you to PR.
/// ```aiken
/// let price_feed_script = "99634e17a7de2dbd7a478e994b334457f593cdd3d74279ad55d7418ec84d2a69"
/// let price_feed_tag = Void
/// let check_feed =
///      feed_utils.validate(price_feed_script, ctx.transaction.redeemers, _)
/// check_feed(PriceFeed(redeemer.price.1st, redeemer.price.2nd, price_feed_tag))
/// ```
pub fn validate(price_feed_script: types.ScriptHash, redeemers, feed: a) {
  (
    redeemers
      |> dict.get(WithdrawFrom(Inline(ScriptCredential(price_feed_script))))
  ) == Some(feed)
}
