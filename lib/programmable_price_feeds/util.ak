use aiken/dict
use aiken/transaction.{WithdrawFrom}
use aiken/transaction/credential.{Inline, ScriptCredential}
use programmable_price_feeds/types

/// If you can reduce the cost of validate, I encourage you to PR.
pub fn validate(price_feed_script: types.ScriptHash, redeemers, feed: a) {
  (
    redeemers
      |> dict.get(WithdrawFrom(Inline(ScriptCredential(price_feed_script))))
  ) == Some(feed)
}
