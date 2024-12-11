module Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleProperty (
        module Exports, ConfiguredTableAssociationAnalysisRuleProperty(..),
        mkConfiguredTableAssociationAnalysisRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfiguredTableAssociationAnalysisRuleProperty
  = ConfiguredTableAssociationAnalysisRuleProperty {policy :: ConfiguredTableAssociationAnalysisRulePolicyProperty,
                                                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAssociationAnalysisRuleProperty ::
  ConfiguredTableAssociationAnalysisRulePolicyProperty
  -> Value Prelude.Text
     -> ConfiguredTableAssociationAnalysisRuleProperty
mkConfiguredTableAssociationAnalysisRuleProperty policy type'
  = ConfiguredTableAssociationAnalysisRuleProperty
      {policy = policy, type' = type'}
instance ToResourceProperties ConfiguredTableAssociationAnalysisRuleProperty where
  toResourceProperties
    ConfiguredTableAssociationAnalysisRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRule",
         supportsTags = Prelude.False,
         properties = ["Policy" JSON..= policy, "Type" JSON..= type']}
instance JSON.ToJSON ConfiguredTableAssociationAnalysisRuleProperty where
  toJSON ConfiguredTableAssociationAnalysisRuleProperty {..}
    = JSON.object ["Policy" JSON..= policy, "Type" JSON..= type']
instance Property "Policy" ConfiguredTableAssociationAnalysisRuleProperty where
  type PropertyType "Policy" ConfiguredTableAssociationAnalysisRuleProperty = ConfiguredTableAssociationAnalysisRulePolicyProperty
  set newValue ConfiguredTableAssociationAnalysisRuleProperty {..}
    = ConfiguredTableAssociationAnalysisRuleProperty
        {policy = newValue, ..}
instance Property "Type" ConfiguredTableAssociationAnalysisRuleProperty where
  type PropertyType "Type" ConfiguredTableAssociationAnalysisRuleProperty = Value Prelude.Text
  set newValue ConfiguredTableAssociationAnalysisRuleProperty {..}
    = ConfiguredTableAssociationAnalysisRuleProperty
        {type' = newValue, ..}