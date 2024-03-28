module Stratosphere.EntityResolution.MatchingWorkflow.RuleBasedPropertiesProperty (
        module Exports, RuleBasedPropertiesProperty(..),
        mkRuleBasedPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.RuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuleBasedPropertiesProperty
  = RuleBasedPropertiesProperty {attributeMatchingModel :: (Value Prelude.Text),
                                 rules :: [RuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleBasedPropertiesProperty ::
  Value Prelude.Text -> [RuleProperty] -> RuleBasedPropertiesProperty
mkRuleBasedPropertiesProperty attributeMatchingModel rules
  = RuleBasedPropertiesProperty
      {attributeMatchingModel = attributeMatchingModel, rules = rules}
instance ToResourceProperties RuleBasedPropertiesProperty where
  toResourceProperties RuleBasedPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.RuleBasedProperties",
         supportsTags = Prelude.False,
         properties = ["AttributeMatchingModel"
                         JSON..= attributeMatchingModel,
                       "Rules" JSON..= rules]}
instance JSON.ToJSON RuleBasedPropertiesProperty where
  toJSON RuleBasedPropertiesProperty {..}
    = JSON.object
        ["AttributeMatchingModel" JSON..= attributeMatchingModel,
         "Rules" JSON..= rules]
instance Property "AttributeMatchingModel" RuleBasedPropertiesProperty where
  type PropertyType "AttributeMatchingModel" RuleBasedPropertiesProperty = Value Prelude.Text
  set newValue RuleBasedPropertiesProperty {..}
    = RuleBasedPropertiesProperty
        {attributeMatchingModel = newValue, ..}
instance Property "Rules" RuleBasedPropertiesProperty where
  type PropertyType "Rules" RuleBasedPropertiesProperty = [RuleProperty]
  set newValue RuleBasedPropertiesProperty {..}
    = RuleBasedPropertiesProperty {rules = newValue, ..}