module Stratosphere.IoTAnalytics.Dataset.DatasetContentDeliveryRuleDestinationProperty (
        module Exports, DatasetContentDeliveryRuleDestinationProperty(..),
        mkDatasetContentDeliveryRuleDestinationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.IotEventsDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.S3DestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data DatasetContentDeliveryRuleDestinationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html>
    DatasetContentDeliveryRuleDestinationProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-ioteventsdestinationconfiguration>
                                                   iotEventsDestinationConfiguration :: (Prelude.Maybe IotEventsDestinationConfigurationProperty),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-datasetcontentdeliveryruledestination.html#cfn-iotanalytics-dataset-datasetcontentdeliveryruledestination-s3destinationconfiguration>
                                                   s3DestinationConfiguration :: (Prelude.Maybe S3DestinationConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDatasetContentDeliveryRuleDestinationProperty ::
  DatasetContentDeliveryRuleDestinationProperty
mkDatasetContentDeliveryRuleDestinationProperty
  = DatasetContentDeliveryRuleDestinationProperty
      {haddock_workaround_ = (),
       iotEventsDestinationConfiguration = Prelude.Nothing,
       s3DestinationConfiguration = Prelude.Nothing}
instance ToResourceProperties DatasetContentDeliveryRuleDestinationProperty where
  toResourceProperties
    DatasetContentDeliveryRuleDestinationProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.DatasetContentDeliveryRuleDestination",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IotEventsDestinationConfiguration"
                              Prelude.<$> iotEventsDestinationConfiguration,
                            (JSON..=) "S3DestinationConfiguration"
                              Prelude.<$> s3DestinationConfiguration])}
instance JSON.ToJSON DatasetContentDeliveryRuleDestinationProperty where
  toJSON DatasetContentDeliveryRuleDestinationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IotEventsDestinationConfiguration"
                 Prelude.<$> iotEventsDestinationConfiguration,
               (JSON..=) "S3DestinationConfiguration"
                 Prelude.<$> s3DestinationConfiguration]))
instance Property "IotEventsDestinationConfiguration" DatasetContentDeliveryRuleDestinationProperty where
  type PropertyType "IotEventsDestinationConfiguration" DatasetContentDeliveryRuleDestinationProperty = IotEventsDestinationConfigurationProperty
  set newValue DatasetContentDeliveryRuleDestinationProperty {..}
    = DatasetContentDeliveryRuleDestinationProperty
        {iotEventsDestinationConfiguration = Prelude.pure newValue, ..}
instance Property "S3DestinationConfiguration" DatasetContentDeliveryRuleDestinationProperty where
  type PropertyType "S3DestinationConfiguration" DatasetContentDeliveryRuleDestinationProperty = S3DestinationConfigurationProperty
  set newValue DatasetContentDeliveryRuleDestinationProperty {..}
    = DatasetContentDeliveryRuleDestinationProperty
        {s3DestinationConfiguration = Prelude.pure newValue, ..}