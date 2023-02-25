module Stratosphere.WAFRegional.RateBasedRule (
        module Exports, RateBasedRule(..), mkRateBasedRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAFRegional.RateBasedRule.PredicateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RateBasedRule
  = RateBasedRule {matchPredicates :: (Prelude.Maybe [PredicateProperty]),
                   metricName :: (Value Prelude.Text),
                   name :: (Value Prelude.Text),
                   rateKey :: (Value Prelude.Text),
                   rateLimit :: (Value Prelude.Integer)}
mkRateBasedRule ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Integer -> RateBasedRule
mkRateBasedRule metricName name rateKey rateLimit
  = RateBasedRule
      {metricName = metricName, name = name, rateKey = rateKey,
       rateLimit = rateLimit, matchPredicates = Prelude.Nothing}
instance ToResourceProperties RateBasedRule where
  toResourceProperties RateBasedRule {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::RateBasedRule",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName, "Name" JSON..= name,
                            "RateKey" JSON..= rateKey, "RateLimit" JSON..= rateLimit]
                           (Prelude.catMaybes
                              [(JSON..=) "MatchPredicates" Prelude.<$> matchPredicates]))}
instance JSON.ToJSON RateBasedRule where
  toJSON RateBasedRule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName, "Name" JSON..= name,
               "RateKey" JSON..= rateKey, "RateLimit" JSON..= rateLimit]
              (Prelude.catMaybes
                 [(JSON..=) "MatchPredicates" Prelude.<$> matchPredicates])))
instance Property "MatchPredicates" RateBasedRule where
  type PropertyType "MatchPredicates" RateBasedRule = [PredicateProperty]
  set newValue RateBasedRule {..}
    = RateBasedRule {matchPredicates = Prelude.pure newValue, ..}
instance Property "MetricName" RateBasedRule where
  type PropertyType "MetricName" RateBasedRule = Value Prelude.Text
  set newValue RateBasedRule {..}
    = RateBasedRule {metricName = newValue, ..}
instance Property "Name" RateBasedRule where
  type PropertyType "Name" RateBasedRule = Value Prelude.Text
  set newValue RateBasedRule {..}
    = RateBasedRule {name = newValue, ..}
instance Property "RateKey" RateBasedRule where
  type PropertyType "RateKey" RateBasedRule = Value Prelude.Text
  set newValue RateBasedRule {..}
    = RateBasedRule {rateKey = newValue, ..}
instance Property "RateLimit" RateBasedRule where
  type PropertyType "RateLimit" RateBasedRule = Value Prelude.Integer
  set newValue RateBasedRule {..}
    = RateBasedRule {rateLimit = newValue, ..}