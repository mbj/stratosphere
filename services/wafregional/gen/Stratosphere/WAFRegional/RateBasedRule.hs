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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html>
    RateBasedRule {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-matchpredicates>
                   matchPredicates :: (Prelude.Maybe [PredicateProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-metricname>
                   metricName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-name>
                   name :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-ratekey>
                   rateKey :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wafregional-ratebasedrule.html#cfn-wafregional-ratebasedrule-ratelimit>
                   rateLimit :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRateBasedRule ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> Value Prelude.Integer -> RateBasedRule
mkRateBasedRule metricName name rateKey rateLimit
  = RateBasedRule
      {haddock_workaround_ = (), metricName = metricName, name = name,
       rateKey = rateKey, rateLimit = rateLimit,
       matchPredicates = Prelude.Nothing}
instance ToResourceProperties RateBasedRule where
  toResourceProperties RateBasedRule {..}
    = ResourceProperties
        {awsType = "AWS::WAFRegional::RateBasedRule",
         supportsTags = Prelude.False,
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