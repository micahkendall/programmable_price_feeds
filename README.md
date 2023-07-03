# programmable_price_feeds

Prototype for price feeds programmable by stake validators.

Example validators in the `validators` folder, and supporting functions/types in the `lib` folder.

## Documentation

This is intended to be used as a library, so you might want to generate an HTML documentation for it.

Use:

```sh
aiken docs
```

## Building

```sh
aiken build
```

## Testing

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