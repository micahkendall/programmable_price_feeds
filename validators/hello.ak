use aiken/transaction.{ScriptContext}
use programmable_price_feeds/types

validator {
  fn spend(datum: types.Datum, _redeemer: Data, _ctx: ScriptContext) -> Bool {
    datum.message == "Hello World!"
  }
}
