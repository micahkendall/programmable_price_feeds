# **DO NOT RELEASE AN IMPLEMENTATION OF THIS**
# **IGNORE THE TEXT BELOW**
## SPECIFICATION

**PLEASE IMPLEMENT THIS SPECIFICATION AS A STAND-ALONE STAKE-VALIDATOR ONTOP OF YOUR DEX OR ORACLE:**

- You create a stand alone stake validator
- Anyone can withdraw a value of 0 (you may add extra validation for greater withdrawal amounts)
- If they withdraw a value of 0, you validate the redeemer is of type `programmable_price_feeds.types.PriceFeeds<a>`, where a can be any generic data you want to additionally process

You may:
- Enforce the list is of length 1 (single currency)
- Pass string/integers as a (this is expected to be generic and provided by the contract utiliser, not hard-coded into the compatible contracts)
- Pass complex structures through the redeemer tag

You probably should:
- Make your validate throw/error if your DEX pool UTxO is not found in reference inputs
- Make your validator throw/error if your Oracle UTxO is not found in reference inputs
- Make your validator throw/error if your Oracle pub-key solution has not signed the transaction
- Make your validator throw/error if the UTxO you reference doesn't have the **exact** same value as what is provided through the `programmable_price_feeds.types.PriceFeeds<a>` redeemer. In aiken you can use `aiken/stdlib/math/rational.{compare}` after parsing both in as rationals.
- Make your validator throw/error if the UTxO referenced is out of date.

## programmable_price_feeds

Prototype for price feeds programmable by stake validators.

Example validators in the `validators` folder, and supporting functions/types in the `lib` folder.

### Documentation

This is intended to be used as a library, so you might want to generate an HTML documentation for it.

Use:

```sh
aiken docs
```

### Building

```sh
aiken build
```

### Testing

You can write tests in any module using the `test` keyword. For example:

```gleam
test foo() {
  1 + 1 == 2
}
```

To run all tests, simply do:

```sh
aiken check
```

To run only tests matching the string `foo`, do:

```sh
aiken check -m foo
```