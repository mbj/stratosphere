module Stratosphere.WAF.Rule (
        module Exports, Rule(..), mkRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WAF.Rule.PredicateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Rule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html>
    Rule {haddock_workaround_ :: (),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html#cfn-waf-rule-metricname>
          metricName :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html#cfn-waf-rule-name>
          name :: (Value Prelude.Text),
          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-waf-rule.html#cfn-waf-rule-predicates>
          predicates :: (Prelude.Maybe [PredicateProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRule :: Value Prelude.Text -> Value Prelude.Text -> Rule
mkRule metricName name
  = Rule
      {haddock_workaround_ = (), metricName = metricName, name = name,
       predicates = Prelude.Nothing}
instance ToResourceProperties Rule where
  toResourceProperties Rule {..}
    = ResourceProperties
        {awsType = "AWS::WAF::Rule", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Predicates" Prelude.<$> predicates]))}
instance JSON.ToJSON Rule where
  toJSON Rule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Predicates" Prelude.<$> predicates])))
instance Property "MetricName" Rule where
  type PropertyType "MetricName" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {metricName = newValue, ..}
instance Property "Name" Rule where
  type PropertyType "Name" Rule = Value Prelude.Text
  set newValue Rule {..} = Rule {name = newValue, ..}
instance Property "Predicates" Rule where
  type PropertyType "Predicates" Rule = [PredicateProperty]
  set newValue Rule {..}
    = Rule {predicates = Prelude.pure newValue, ..}