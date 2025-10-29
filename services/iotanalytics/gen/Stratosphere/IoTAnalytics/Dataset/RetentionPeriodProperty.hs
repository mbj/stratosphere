module Stratosphere.IoTAnalytics.Dataset.RetentionPeriodProperty (
        RetentionPeriodProperty(..), mkRetentionPeriodProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RetentionPeriodProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html>
    RetentionPeriodProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html#cfn-iotanalytics-dataset-retentionperiod-numberofdays>
                             numberOfDays :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-retentionperiod.html#cfn-iotanalytics-dataset-retentionperiod-unlimited>
                             unlimited :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRetentionPeriodProperty :: RetentionPeriodProperty
mkRetentionPeriodProperty
  = RetentionPeriodProperty
      {numberOfDays = Prelude.Nothing, unlimited = Prelude.Nothing}
instance ToResourceProperties RetentionPeriodProperty where
  toResourceProperties RetentionPeriodProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.RetentionPeriod",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NumberOfDays" Prelude.<$> numberOfDays,
                            (JSON..=) "Unlimited" Prelude.<$> unlimited])}
instance JSON.ToJSON RetentionPeriodProperty where
  toJSON RetentionPeriodProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NumberOfDays" Prelude.<$> numberOfDays,
               (JSON..=) "Unlimited" Prelude.<$> unlimited]))
instance Property "NumberOfDays" RetentionPeriodProperty where
  type PropertyType "NumberOfDays" RetentionPeriodProperty = Value Prelude.Integer
  set newValue RetentionPeriodProperty {..}
    = RetentionPeriodProperty
        {numberOfDays = Prelude.pure newValue, ..}
instance Property "Unlimited" RetentionPeriodProperty where
  type PropertyType "Unlimited" RetentionPeriodProperty = Value Prelude.Bool
  set newValue RetentionPeriodProperty {..}
    = RetentionPeriodProperty {unlimited = Prelude.pure newValue, ..}