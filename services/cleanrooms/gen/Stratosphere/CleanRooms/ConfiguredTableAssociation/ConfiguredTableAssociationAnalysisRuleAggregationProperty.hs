module Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleAggregationProperty (
        ConfiguredTableAssociationAnalysisRuleAggregationProperty(..),
        mkConfiguredTableAssociationAnalysisRuleAggregationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConfiguredTableAssociationAnalysisRuleAggregationProperty
  = ConfiguredTableAssociationAnalysisRuleAggregationProperty {allowedAdditionalAnalyses :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                               allowedResultReceivers :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAssociationAnalysisRuleAggregationProperty ::
  ConfiguredTableAssociationAnalysisRuleAggregationProperty
mkConfiguredTableAssociationAnalysisRuleAggregationProperty
  = ConfiguredTableAssociationAnalysisRuleAggregationProperty
      {allowedAdditionalAnalyses = Prelude.Nothing,
       allowedResultReceivers = Prelude.Nothing}
instance ToResourceProperties ConfiguredTableAssociationAnalysisRuleAggregationProperty where
  toResourceProperties
    ConfiguredTableAssociationAnalysisRuleAggregationProperty {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleAggregation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedAdditionalAnalyses"
                              Prelude.<$> allowedAdditionalAnalyses,
                            (JSON..=) "AllowedResultReceivers"
                              Prelude.<$> allowedResultReceivers])}
instance JSON.ToJSON ConfiguredTableAssociationAnalysisRuleAggregationProperty where
  toJSON
    ConfiguredTableAssociationAnalysisRuleAggregationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedAdditionalAnalyses"
                 Prelude.<$> allowedAdditionalAnalyses,
               (JSON..=) "AllowedResultReceivers"
                 Prelude.<$> allowedResultReceivers]))
instance Property "AllowedAdditionalAnalyses" ConfiguredTableAssociationAnalysisRuleAggregationProperty where
  type PropertyType "AllowedAdditionalAnalyses" ConfiguredTableAssociationAnalysisRuleAggregationProperty = ValueList Prelude.Text
  set
    newValue
    ConfiguredTableAssociationAnalysisRuleAggregationProperty {..}
    = ConfiguredTableAssociationAnalysisRuleAggregationProperty
        {allowedAdditionalAnalyses = Prelude.pure newValue, ..}
instance Property "AllowedResultReceivers" ConfiguredTableAssociationAnalysisRuleAggregationProperty where
  type PropertyType "AllowedResultReceivers" ConfiguredTableAssociationAnalysisRuleAggregationProperty = ValueList Prelude.Text
  set
    newValue
    ConfiguredTableAssociationAnalysisRuleAggregationProperty {..}
    = ConfiguredTableAssociationAnalysisRuleAggregationProperty
        {allowedResultReceivers = Prelude.pure newValue, ..}