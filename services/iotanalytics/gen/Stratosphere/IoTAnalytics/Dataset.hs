module Stratosphere.IoTAnalytics.Dataset (
        module Exports, Dataset(..), mkDataset
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.DatasetContentDeliveryRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.LateDataRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.RetentionPeriodProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.TriggerProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.VersioningConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Dataset
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html>
    Dataset {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-actions>
             actions :: [ActionProperty],
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-contentdeliveryrules>
             contentDeliveryRules :: (Prelude.Maybe [DatasetContentDeliveryRuleProperty]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-datasetname>
             datasetName :: (Prelude.Maybe (Value Prelude.Text)),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-latedatarules>
             lateDataRules :: (Prelude.Maybe [LateDataRuleProperty]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-retentionperiod>
             retentionPeriod :: (Prelude.Maybe RetentionPeriodProperty),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-triggers>
             triggers :: (Prelude.Maybe [TriggerProperty]),
             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotanalytics-dataset.html#cfn-iotanalytics-dataset-versioningconfiguration>
             versioningConfiguration :: (Prelude.Maybe VersioningConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataset :: [ActionProperty] -> Dataset
mkDataset actions
  = Dataset
      {actions = actions, contentDeliveryRules = Prelude.Nothing,
       datasetName = Prelude.Nothing, lateDataRules = Prelude.Nothing,
       retentionPeriod = Prelude.Nothing, tags = Prelude.Nothing,
       triggers = Prelude.Nothing,
       versioningConfiguration = Prelude.Nothing}
instance ToResourceProperties Dataset where
  toResourceProperties Dataset {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Actions" JSON..= actions]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentDeliveryRules" Prelude.<$> contentDeliveryRules,
                               (JSON..=) "DatasetName" Prelude.<$> datasetName,
                               (JSON..=) "LateDataRules" Prelude.<$> lateDataRules,
                               (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Triggers" Prelude.<$> triggers,
                               (JSON..=) "VersioningConfiguration"
                                 Prelude.<$> versioningConfiguration]))}
instance JSON.ToJSON Dataset where
  toJSON Dataset {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Actions" JSON..= actions]
              (Prelude.catMaybes
                 [(JSON..=) "ContentDeliveryRules" Prelude.<$> contentDeliveryRules,
                  (JSON..=) "DatasetName" Prelude.<$> datasetName,
                  (JSON..=) "LateDataRules" Prelude.<$> lateDataRules,
                  (JSON..=) "RetentionPeriod" Prelude.<$> retentionPeriod,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Triggers" Prelude.<$> triggers,
                  (JSON..=) "VersioningConfiguration"
                    Prelude.<$> versioningConfiguration])))
instance Property "Actions" Dataset where
  type PropertyType "Actions" Dataset = [ActionProperty]
  set newValue Dataset {..} = Dataset {actions = newValue, ..}
instance Property "ContentDeliveryRules" Dataset where
  type PropertyType "ContentDeliveryRules" Dataset = [DatasetContentDeliveryRuleProperty]
  set newValue Dataset {..}
    = Dataset {contentDeliveryRules = Prelude.pure newValue, ..}
instance Property "DatasetName" Dataset where
  type PropertyType "DatasetName" Dataset = Value Prelude.Text
  set newValue Dataset {..}
    = Dataset {datasetName = Prelude.pure newValue, ..}
instance Property "LateDataRules" Dataset where
  type PropertyType "LateDataRules" Dataset = [LateDataRuleProperty]
  set newValue Dataset {..}
    = Dataset {lateDataRules = Prelude.pure newValue, ..}
instance Property "RetentionPeriod" Dataset where
  type PropertyType "RetentionPeriod" Dataset = RetentionPeriodProperty
  set newValue Dataset {..}
    = Dataset {retentionPeriod = Prelude.pure newValue, ..}
instance Property "Tags" Dataset where
  type PropertyType "Tags" Dataset = [Tag]
  set newValue Dataset {..}
    = Dataset {tags = Prelude.pure newValue, ..}
instance Property "Triggers" Dataset where
  type PropertyType "Triggers" Dataset = [TriggerProperty]
  set newValue Dataset {..}
    = Dataset {triggers = Prelude.pure newValue, ..}
instance Property "VersioningConfiguration" Dataset where
  type PropertyType "VersioningConfiguration" Dataset = VersioningConfigurationProperty
  set newValue Dataset {..}
    = Dataset {versioningConfiguration = Prelude.pure newValue, ..}