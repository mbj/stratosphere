module Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicyV1Property (
        module Exports,
        ConfiguredTableAssociationAnalysisRulePolicyV1Property(..),
        mkConfiguredTableAssociationAnalysisRulePolicyV1Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleAggregationProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleCustomProperty as Exports
import {-# SOURCE #-} Stratosphere.CleanRooms.ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRuleListProperty as Exports
import Stratosphere.ResourceProperties
data ConfiguredTableAssociationAnalysisRulePolicyV1Property
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1.html>
    ConfiguredTableAssociationAnalysisRulePolicyV1Property {haddock_workaround_ :: (),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1-aggregation>
                                                            aggregation :: (Prelude.Maybe ConfiguredTableAssociationAnalysisRuleAggregationProperty),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1-custom>
                                                            custom :: (Prelude.Maybe ConfiguredTableAssociationAnalysisRuleCustomProperty),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1.html#cfn-cleanrooms-configuredtableassociation-configuredtableassociationanalysisrulepolicyv1-list>
                                                            list :: (Prelude.Maybe ConfiguredTableAssociationAnalysisRuleListProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfiguredTableAssociationAnalysisRulePolicyV1Property ::
  ConfiguredTableAssociationAnalysisRulePolicyV1Property
mkConfiguredTableAssociationAnalysisRulePolicyV1Property
  = ConfiguredTableAssociationAnalysisRulePolicyV1Property
      {haddock_workaround_ = (), aggregation = Prelude.Nothing,
       custom = Prelude.Nothing, list = Prelude.Nothing}
instance ToResourceProperties ConfiguredTableAssociationAnalysisRulePolicyV1Property where
  toResourceProperties
    ConfiguredTableAssociationAnalysisRulePolicyV1Property {..}
    = ResourceProperties
        {awsType = "AWS::CleanRooms::ConfiguredTableAssociation.ConfiguredTableAssociationAnalysisRulePolicyV1",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Aggregation" Prelude.<$> aggregation,
                            (JSON..=) "Custom" Prelude.<$> custom,
                            (JSON..=) "List" Prelude.<$> list])}
instance JSON.ToJSON ConfiguredTableAssociationAnalysisRulePolicyV1Property where
  toJSON ConfiguredTableAssociationAnalysisRulePolicyV1Property {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Aggregation" Prelude.<$> aggregation,
               (JSON..=) "Custom" Prelude.<$> custom,
               (JSON..=) "List" Prelude.<$> list]))
instance Property "Aggregation" ConfiguredTableAssociationAnalysisRulePolicyV1Property where
  type PropertyType "Aggregation" ConfiguredTableAssociationAnalysisRulePolicyV1Property = ConfiguredTableAssociationAnalysisRuleAggregationProperty
  set
    newValue
    ConfiguredTableAssociationAnalysisRulePolicyV1Property {..}
    = ConfiguredTableAssociationAnalysisRulePolicyV1Property
        {aggregation = Prelude.pure newValue, ..}
instance Property "Custom" ConfiguredTableAssociationAnalysisRulePolicyV1Property where
  type PropertyType "Custom" ConfiguredTableAssociationAnalysisRulePolicyV1Property = ConfiguredTableAssociationAnalysisRuleCustomProperty
  set
    newValue
    ConfiguredTableAssociationAnalysisRulePolicyV1Property {..}
    = ConfiguredTableAssociationAnalysisRulePolicyV1Property
        {custom = Prelude.pure newValue, ..}
instance Property "List" ConfiguredTableAssociationAnalysisRulePolicyV1Property where
  type PropertyType "List" ConfiguredTableAssociationAnalysisRulePolicyV1Property = ConfiguredTableAssociationAnalysisRuleListProperty
  set
    newValue
    ConfiguredTableAssociationAnalysisRulePolicyV1Property {..}
    = ConfiguredTableAssociationAnalysisRulePolicyV1Property
        {list = Prelude.pure newValue, ..}