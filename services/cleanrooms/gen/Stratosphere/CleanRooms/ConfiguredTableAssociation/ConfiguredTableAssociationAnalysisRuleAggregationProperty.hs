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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation.html>
    ConfiguredTableAssociationAnalysisRuleAggregationProperty {haddock_workaround_ :: (),
                                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation-allowedadditionalanalyses>
                                                               allowedAdditionalAnalyses :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisruleaggregation-allowedresultreceivers>
                                                               allowedResultReceivers :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAssociationAnalysisRuleAggregationProperty ::
  ConfiguredTableAssociationAnalysisRuleAggregationProperty
mkConfiguredTableAssociationAnalysisRuleAggregationProperty
  = ConfiguredTableAssociationAnalysisRuleAggregationProperty
      {haddock_workaround_ = (),
       allowedAdditionalAnalyses = Prelude.Nothing,
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