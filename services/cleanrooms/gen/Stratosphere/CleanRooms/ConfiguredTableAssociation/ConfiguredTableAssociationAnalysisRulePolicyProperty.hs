module Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicyProperty (
        module Exports,
        ConfiguredTableAssociationAnalysisRulePolicyProperty(..),
        mkConfiguredTableAssociationAnalysisRulePolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicyV1Property as Exports
import Stratosphere.ResourceProperties
data ConfiguredTableAssociationAnalysisRulePolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicy.html>
    ConfiguredTableAssociationAnalysisRulePolicyProperty {haddock_workaround_ :: (),
                                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicy.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicy-v1>
                                                          v1 :: ConfiguredTableAssociationAnalysisRulePolicyV1Property}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAssociationAnalysisRulePolicyProperty ::
  ConfiguredTableAssociationAnalysisRulePolicyV1Property
  -> ConfiguredTableAssociationAnalysisRulePolicyProperty
mkConfiguredTableAssociationAnalysisRulePolicyProperty v1
  = ConfiguredTableAssociationAnalysisRulePolicyProperty
      {haddock_workaround_ = (), v1 = v1}
instance ToResourceProperties ConfiguredTableAssociationAnalysisRulePolicyProperty where
  toResourceProperties
    ConfiguredTableAssociationAnalysisRulePolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicy",
         supportsTags = Prelude.False, properties = ["V1" JSON..= v1]}
instance JSON.ToJSON ConfiguredTableAssociationAnalysisRulePolicyProperty where
  toJSON ConfiguredTableAssociationAnalysisRulePolicyProperty {..}
    = JSON.object ["V1" JSON..= v1]
instance Property "V1" ConfiguredTableAssociationAnalysisRulePolicyProperty where
  type PropertyType "V1" ConfiguredTableAssociationAnalysisRulePolicyProperty = ConfiguredTableAssociationAnalysisRulePolicyV1Property
  set
    newValue
    ConfiguredTableAssociationAnalysisRulePolicyProperty {..}
    = ConfiguredTableAssociationAnalysisRulePolicyProperty
        {v1 = newValue, ..}