module Stratosphere.EntityResolution.MatchingWorkflow.RuleConditionPropertiesProperty (
        module Exports, RuleConditionPropertiesProperty(..),
        mkRuleConditionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.RuleConditionProperty as Exports
import Stratosphere.ResourceProperties
data RuleConditionPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-ruleconditionproperties.html>
    RuleConditionPropertiesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-entityresolution-matchingworkflow-ruleconditionproperties.html#cfn-entityresolution-matchingworkflow-ruleconditionproperties-rules>
                                     rules :: [RuleConditionProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleConditionPropertiesProperty ::
  [RuleConditionProperty] -> RuleConditionPropertiesProperty
mkRuleConditionPropertiesProperty rules
  = RuleConditionPropertiesProperty
      {haddock_workaround_ = (), rules = rules}
instance ToResourceProperties RuleConditionPropertiesProperty where
  toResourceProperties RuleConditionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow.RuleConditionProperties",
         supportsTags = Prelude.False, properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON RuleConditionPropertiesProperty where
  toJSON RuleConditionPropertiesProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" RuleConditionPropertiesProperty where
  type PropertyType "Rules" RuleConditionPropertiesProperty = [RuleConditionProperty]
  set newValue RuleConditionPropertiesProperty {..}
    = RuleConditionPropertiesProperty {rules = newValue, ..}