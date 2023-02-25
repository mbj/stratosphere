module Stratosphere.NetworkFirewall.RuleGroup.RulesSourceListProperty (
        RulesSourceListProperty(..), mkRulesSourceListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RulesSourceListProperty
  = RulesSourceListProperty {generatedRulesType :: (Value Prelude.Text),
                             targetTypes :: (ValueList (Value Prelude.Text)),
                             targets :: (ValueList (Value Prelude.Text))}
mkRulesSourceListProperty ::
  Value Prelude.Text
  -> ValueList (Value Prelude.Text)
     -> ValueList (Value Prelude.Text) -> RulesSourceListProperty
mkRulesSourceListProperty generatedRulesType targetTypes targets
  = RulesSourceListProperty
      {generatedRulesType = generatedRulesType,
       targetTypes = targetTypes, targets = targets}
instance ToResourceProperties RulesSourceListProperty where
  toResourceProperties RulesSourceListProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.RulesSourceList",
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
  type PropertyType "TargetTypes" RulesSourceListProperty = ValueList (Value Prelude.Text)
  set newValue RulesSourceListProperty {..}
    = RulesSourceListProperty {targetTypes = newValue, ..}
instance Property "Targets" RulesSourceListProperty where
  type PropertyType "Targets" RulesSourceListProperty = ValueList (Value Prelude.Text)
  set newValue RulesSourceListProperty {..}
    = RulesSourceListProperty {targets = newValue, ..}