//// These are the types for the programmable price feed library.

/// Any price feed script should **only support one** type variant of a in PriceFeed<a>.
/// All utilisers should take the pair, price_feed_script & tag, by their parameters.
/// This allows any contract to be parameterised with any particular feed from any script.
/// You can support a single price feed per script (tag: Void), or support many feeds (tag: Int/ByteArray)
/// Tagged feed is good for extensibility in e.g a map. Any type can be used.
pub type PriceFeed<a> {
  ratioX: Int,
  ratioY: Int,
  tag: a,
}

pub type ScriptHash =
  ByteArray
