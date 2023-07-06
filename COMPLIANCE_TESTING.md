# Compliance Testing

Knowing a script complies is important for publishing an integrating in an open-source environment.

The main standard we need to guarantee passes between different languages that target the plutus VM:
- Redeemer must correctly deserialise.

How can we validate this?

Develop a model where either a **specific trace is emitted**, provided via the parameters of the script, or it is not.
This allows validating specific conditions.

We then have a series of tests provided here which will run the script with the incorrect/correct redeemer.

Your trace-stripped-script can be easily proven to reduce to your deployment-script, which lets us show that your deployed validator fits the standard.