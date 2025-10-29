module Stratosphere.NetworkFirewall.RuleGroup.RulesSourceListProperty (
        RulesSourceListProperty(..), mkRulesSourceListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RulesSourceListProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessourcelist.html>
    RulesSourceListProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessourcelist.html#cfn-networkfirewall-rulegroup-rulessourcelist-generatedrulestype>
                             generatedRulesType :: (Value Prelude.Text),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessourcelist.html#cfn-networkfirewall-rulegroup-rulessourcelist-targettypes>
                             targetTypes :: (ValueList Prelude.Text),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulessourcelist.html#cfn-networkfirewall-rulegroup-rulessourcelist-targets>
                             targets :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRulesSourceListProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> ValueList Prelude.Text -> RulesSourceListProperty
mkRulesSourceListProperty generatedRulesType targetTypes targets
  = RulesSourceListProperty
      {generatedRulesType = generatedRulesType,
       targetTypes = targetTypes, targets = targets}
instance ToResourceProperties RulesSourceListProperty where
  toResourceProperties RulesSourceListProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.RulesSourceList",
         supportsTags = Prelude.False,
         properties = ["GeneratedRulesType" JSON..= generatedRulesType,
                       "TargetTypes" JSON..= targetTypes, "Targets" JSON..= targets]}
instance JSON.ToJSON RulesSourceListProperty where
  toJSON RulesSourceListProperty {..}
    = JSON.object
        ["GeneratedRulesType" JSON..= generatedRulesType,
         "TargetTypes" JSON..= targetTypes, "Targets" JSON..= targets]
instance Property "GeneratedRulesType" RulesSourceListProperty where
  type PropertyType "GeneratedRulesType" RulesSourceListProperty = Value Prelude.Text
  set newValue RulesSourceListProperty {..}
    = RulesSourceListProperty {generatedRulesType = newValue, ..}
instance Property "TargetTypes" RulesSourceListProperty where
  type PropertyType "TargetTypes" RulesSourceListProperty = ValueList Prelude.Text
  set newValue RulesSourceListProperty {..}
    = RulesSourceListProperty {targetTypes = newValue, ..}
instance Property "Targets" RulesSourceListProperty where
  type PropertyType "Targets" RulesSourceListProperty = ValueList Prelude.Text
  set newValue RulesSourceListProperty {..}
    = RulesSourceListProperty {targets = newValue, ..}