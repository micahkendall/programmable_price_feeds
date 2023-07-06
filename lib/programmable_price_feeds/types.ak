//// These are the types for the programmable price feed library.

/// Price Feeds:
/// * Any price feed script should **only support one** type variant of a in PriceFeed\<a\>. <br/>
/// * All utilisers should take the pair, price_feed_script & tag, by their parameters. <br/>
/// * This allows any contract to be parameterised with any particular feed from any script. <br/>
/// * You can support a single price feed per script (tag: Void), or support many feeds (tag: Int/ByteArray) <br/>
/// * Tagged feed is good for extensibility in e.g a map. Any type can be used. <br/>
pub type PriceFeed<a> {
  ratioX: Int,
  ratioY: Int,
  tag: a,
}

pub type PriceFeeds<a> =
  List<PriceFeed<a>>

/// ScriptHash
pub type ScriptHash =
  ByteArray
