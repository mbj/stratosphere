module Stratosphere.QuickSight.DataSet.RowLevelPermissionTagConfigurationProperty (
        module Exports, RowLevelPermissionTagConfigurationProperty(..),
        mkRowLevelPermissionTagConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.RowLevelPermissionTagRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RowLevelPermissionTagConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiontagconfiguration.html>
    RowLevelPermissionTagConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiontagconfiguration.html#cfn-quicksight-dataset-rowlevelpermissiontagconfiguration-status>
                                                status :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiontagconfiguration.html#cfn-quicksight-dataset-rowlevelpermissiontagconfiguration-tagruleconfigurations>
                                                tagRuleConfigurations :: (Prelude.Maybe JSON.Object),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-rowlevelpermissiontagconfiguration.html#cfn-quicksight-dataset-rowlevelpermissiontagconfiguration-tagrules>
                                                tagRules :: [RowLevelPermissionTagRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRowLevelPermissionTagConfigurationProperty ::
  [RowLevelPermissionTagRuleProperty]
  -> RowLevelPermissionTagConfigurationProperty
mkRowLevelPermissionTagConfigurationProperty tagRules
  = RowLevelPermissionTagConfigurationProperty
      {haddock_workaround_ = (), tagRules = tagRules,
       status = Prelude.Nothing, tagRuleConfigurations = Prelude.Nothing}
instance ToResourceProperties RowLevelPermissionTagConfigurationProperty where
  toResourceProperties
    RowLevelPermissionTagConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.RowLevelPermissionTagConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TagRules" JSON..= tagRules]
                           (Prelude.catMaybes
                              [(JSON..=) "Status" Prelude.<$> status,
                               (JSON..=) "TagRuleConfigurations"
                                 Prelude.<$> tagRuleConfigurations]))}
instance JSON.ToJSON RowLevelPermissionTagConfigurationProperty where
  toJSON RowLevelPermissionTagConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TagRules" JSON..= tagRules]
              (Prelude.catMaybes
                 [(JSON..=) "Status" Prelude.<$> status,
                  (JSON..=) "TagRuleConfigurations"
                    Prelude.<$> tagRuleConfigurations])))
instance Property "Status" RowLevelPermissionTagConfigurationProperty where
  type PropertyType "Status" RowLevelPermissionTagConfigurationProperty = Value Prelude.Text
  set newValue RowLevelPermissionTagConfigurationProperty {..}
    = RowLevelPermissionTagConfigurationProperty
        {status = Prelude.pure newValue, ..}
instance Property "TagRuleConfigurations" RowLevelPermissionTagConfigurationProperty where
  type PropertyType "TagRuleConfigurations" RowLevelPermissionTagConfigurationProperty = JSON.Object
  set newValue RowLevelPermissionTagConfigurationProperty {..}
    = RowLevelPermissionTagConfigurationProperty
        {tagRuleConfigurations = Prelude.pure newValue, ..}
instance Property "TagRules" RowLevelPermissionTagConfigurationProperty where
  type PropertyType "TagRules" RowLevelPermissionTagConfigurationProperty = [RowLevelPermissionTagRuleProperty]
  set newValue RowLevelPermissionTagConfigurationProperty {..}
    = RowLevelPermissionTagConfigurationProperty
        {tagRules = newValue, ..}