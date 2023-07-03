window.Aiken.initSearch([{"doc":"programmable_price_feeds/util","title":"validate","content":"validate(\n  price_feed_script: types.ScriptHash,\n  redeemers: Dict&lt;ScriptPurpose, a&gt;,\n  feed: a,\n) -&gt; Bool\n If you can reduce the cost of validate, I encourage you to PR.\n ```aiken\n let price_feed_script = &quot;99634e17a7de2dbd7a478e994b334457f593cdd3d74279ad55d7418ec84d2a69&quot;\n let price_feed_tag = Void\n let check_feed =\n      feed_utils.validate(price_feed_script, ctx.transaction.redeemers, _)\n check_feed(PriceFeed(redeemer.price.1st, redeemer.price.2nd, price_feed_tag))\n ```","url":"programmable_price_feeds/util.html#validate"},{"doc":"programmable_price_feeds/util","title":"programmable_price_feeds/util","content":"","url":"programmable_price_feeds/util.html"},{"doc":"programmable_price_feeds/types","title":"PriceFeed","content":"PriceFeed&lt;a&gt; {\n  ratioX: Int,\n  ratioY: Int,\n  tag: a,\n}\n Price Feeds:\n * Any price feed script should **only support one** type variant of a in PriceFeed\\&lt;a\\&gt;. &lt;br/&gt;\n * All utilisers should take the pair, price_feed_script &amp; tag, by their parameters. &lt;br/&gt;\n * This allows any contract to be parameterised with any particular feed from any script. &lt;br/&gt;\n * You can support a single price feed per script (tag: Void), or support many feeds (tag: Int/ByteArray) &lt;br/&gt;\n * Tagged feed is good for extensibility in e.g a map. Any type can be used. &lt;br/&gt;\nPriceFeed { ratioX: Int, ratioY: Int, tag: a }\n","url":"programmable_price_feeds/types.html#PriceFeed"},{"doc":"programmable_price_feeds/types","title":"ScriptHash","content":"ScriptHash = ByteArray\n ScriptHash\n","url":"programmable_price_feeds/types.html#ScriptHash"},{"doc":"programmable_price_feeds/types","title":"programmable_price_feeds/types","content":" These are the types for the programmable price feed library.","url":"programmable_price_feeds/types.html"},{"doc":"price_feed","title":"price_feed","content":" Examples of price feed providers","url":"price_feed.html"},{"doc":"example_utiliser","title":"example_utiliser","content":"","url":"example_utiliser.html"}]);