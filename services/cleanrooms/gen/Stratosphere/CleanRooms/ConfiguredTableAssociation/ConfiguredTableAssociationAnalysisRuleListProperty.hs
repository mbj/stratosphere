module Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleListProperty (
        ConfiguredTableAssociationAnalysisRuleListProperty(..),
        mkConfiguredTableAssociationAnalysisRuleListProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfiguredTableAssociationAnalysisRuleListProperty
  = ConfiguredTableAssociationAnalysisRuleListProperty {allowedAdditionalAnalyses :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                        allowedResultReceivers :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAssociationAnalysisRuleListProperty ::
  ConfiguredTableAssociationAnalysisRuleListProperty
mkConfiguredTableAssociationAnalysisRuleListProperty
  = ConfiguredTableAssociationAnalysisRuleListProperty
      {allowedAdditionalAnalyses = Prelude.Nothing,
       allowedResultReceivers = Prelude.Nothing}
instance ToResourceProperties ConfiguredTableAssociationAnalysisRuleListProperty where
  toResourceProperties
    ConfiguredTableAssociationAnalysisRuleListProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleList",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedAdditionalAnalyses"
                              Prelude.<$> allowedAdditionalAnalyses,
                            (JSON..=) "AllowedResultReceivers"
                              Prelude.<$> allowedResultReceivers])}
instance JSON.ToJSON ConfiguredTableAssociationAnalysisRuleListProperty where
  toJSON ConfiguredTableAssociationAnalysisRuleListProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedAdditionalAnalyses"
                 Prelude.<$> allowedAdditionalAnalyses,
               (JSON..=) "AllowedResultReceivers"
                 Prelude.<$> allowedResultReceivers]))
instance Property "AllowedAdditionalAnalyses" ConfiguredTableAssociationAnalysisRuleListProperty where
  type PropertyType "AllowedAdditionalAnalyses" ConfiguredTableAssociationAnalysisRuleListProperty = ValueList Prelude.Text
  set
    newValue
    ConfiguredTableAssociationAnalysisRuleListProperty {..}
    = ConfiguredTableAssociationAnalysisRuleListProperty
        {allowedAdditionalAnalyses = Prelude.pure newValue, ..}
instance Property "AllowedResultReceivers" ConfiguredTableAssociationAnalysisRuleListProperty where
  type PropertyType "AllowedResultReceivers" ConfiguredTableAssociationAnalysisRuleListProperty = ValueList Prelude.Text
  set
    newValue
    ConfiguredTableAssociationAnalysisRuleListProperty {..}
    = ConfiguredTableAssociationAnalysisRuleListProperty
        {allowedResultReceivers = Prelude.pure newValue, ..}