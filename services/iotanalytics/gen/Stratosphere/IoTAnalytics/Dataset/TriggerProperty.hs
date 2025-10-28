module Stratosphere.IoTAnalytics.Dataset.TriggerProperty (
        module Exports, TriggerProperty(..), mkTriggerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.ScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.TriggeringDatasetProperty as Exports
import Stratosphere.ResourceProperties
data TriggerProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html>
    TriggerProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html#cfn-iotanalytics-dataset-trigger-schedule>
                     schedule :: (Prelude.Maybe ScheduleProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-trigger.html#cfn-iotanalytics-dataset-trigger-triggeringdataset>
                     triggeringDataset :: (Prelude.Maybe TriggeringDatasetProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTriggerProperty :: TriggerProperty
mkTriggerProperty
  = TriggerProperty
      {haddock_workaround_ = (), schedule = Prelude.Nothing,
       triggeringDataset = Prelude.Nothing}
instance ToResourceProperties TriggerProperty where
  toResourceProperties TriggerProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.Trigger",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Schedule" Prelude.<$> schedule,
                            (JSON..=) "TriggeringDataset" Prelude.<$> triggeringDataset])}
instance JSON.ToJSON TriggerProperty where
  toJSON TriggerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Schedule" Prelude.<$> schedule,
               (JSON..=) "TriggeringDataset" Prelude.<$> triggeringDataset]))
instance Property "Schedule" TriggerProperty where
  type PropertyType "Schedule" TriggerProperty = ScheduleProperty
  set newValue TriggerProperty {..}
    = TriggerProperty {schedule = Prelude.pure newValue, ..}
instance Property "TriggeringDataset" TriggerProperty where
  type PropertyType "TriggeringDataset" TriggerProperty = TriggeringDatasetProperty
  set newValue TriggerProperty {..}
    = TriggerProperty {triggeringDataset = Prelude.pure newValue, ..}