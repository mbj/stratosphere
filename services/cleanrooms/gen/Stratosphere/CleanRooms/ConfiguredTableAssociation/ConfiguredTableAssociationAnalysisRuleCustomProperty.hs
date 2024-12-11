module Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleCustomProperty (
        ConfiguredTableAssociationAnalysisRuleCustomProperty(..),
        mkConfiguredTableAssociationAnalysisRuleCustomProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfiguredTableAssociationAnalysisRuleCustomProperty
  = ConfiguredTableAssociationAnalysisRuleCustomProperty {allowedAdditionalAnalyses :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                          allowedResultReceivers :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAssociationAnalysisRuleCustomProperty ::
  ConfiguredTableAssociationAnalysisRuleCustomProperty
mkConfiguredTableAssociationAnalysisRuleCustomProperty
  = ConfiguredTableAssociationAnalysisRuleCustomProperty
      {allowedAdditionalAnalyses = Prelude.Nothing,
       allowedResultReceivers = Prelude.Nothing}
instance ToResourceProperties ConfiguredTableAssociationAnalysisRuleCustomProperty where
  toResourceProperties
    ConfiguredTableAssociationAnalysisRuleCustomProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleCustom",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedAdditionalAnalyses"
                              Prelude.<$> allowedAdditionalAnalyses,
                            (JSON..=) "AllowedResultReceivers"
                              Prelude.<$> allowedResultReceivers])}
instance JSON.ToJSON ConfiguredTableAssociationAnalysisRuleCustomProperty where
  toJSON ConfiguredTableAssociationAnalysisRuleCustomProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedAdditionalAnalyses"
                 Prelude.<$> allowedAdditionalAnalyses,
               (JSON..=) "AllowedResultReceivers"
                 Prelude.<$> allowedResultReceivers]))
instance Property "AllowedAdditionalAnalyses" ConfiguredTableAssociationAnalysisRuleCustomProperty where
  type PropertyType "AllowedAdditionalAnalyses" ConfiguredTableAssociationAnalysisRuleCustomProperty = ValueList Prelude.Text
  set
    newValue
    ConfiguredTableAssociationAnalysisRuleCustomProperty {..}
    = ConfiguredTableAssociationAnalysisRuleCustomProperty
        {allowedAdditionalAnalyses = Prelude.pure newValue, ..}
instance Property "AllowedResultReceivers" ConfiguredTableAssociationAnalysisRuleCustomProperty where
  type PropertyType "AllowedResultReceivers" ConfiguredTableAssociationAnalysisRuleCustomProperty = ValueList Prelude.Text
  set
    newValue
    ConfiguredTableAssociationAnalysisRuleCustomProperty {..}
    = ConfiguredTableAssociationAnalysisRuleCustomProperty
        {allowedResultReceivers = Prelude.pure newValue, ..}