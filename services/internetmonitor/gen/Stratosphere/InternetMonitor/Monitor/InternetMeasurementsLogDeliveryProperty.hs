module Stratosphere.InternetMonitor.Monitor.InternetMeasurementsLogDeliveryProperty (
        module Exports, InternetMeasurementsLogDeliveryProperty(..),
        mkInternetMeasurementsLogDeliveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InternetMonitor.Monitor.S3ConfigProperty as Exports
import Stratosphere.ResourceProperties
data InternetMeasurementsLogDeliveryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-internetmonitor-monitor-internetmeasurementslogdelivery.html>
    InternetMeasurementsLogDeliveryProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-internetmonitor-monitor-internetmeasurementslogdelivery.html#cfn-internetmonitor-monitor-internetmeasurementslogdelivery-s3config>
                                             s3Config :: (Prelude.Maybe S3ConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInternetMeasurementsLogDeliveryProperty ::
  InternetMeasurementsLogDeliveryProperty
mkInternetMeasurementsLogDeliveryProperty
  = InternetMeasurementsLogDeliveryProperty
      {haddock_workaround_ = (), s3Config = Prelude.Nothing}
instance ToResourceProperties InternetMeasurementsLogDeliveryProperty where
  toResourceProperties InternetMeasurementsLogDeliveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::InternetMonitor::Monitor.InternetMeasurementsLogDelivery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3Config" Prelude.<$> s3Config])}
instance JSON.ToJSON InternetMeasurementsLogDeliveryProperty where
  toJSON InternetMeasurementsLogDeliveryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3Config" Prelude.<$> s3Config]))
instance Property "S3Config" InternetMeasurementsLogDeliveryProperty where
  type PropertyType "S3Config" InternetMeasurementsLogDeliveryProperty = S3ConfigProperty
  set newValue InternetMeasurementsLogDeliveryProperty {..}
    = InternetMeasurementsLogDeliveryProperty
        {s3Config = Prelude.pure newValue, ..}