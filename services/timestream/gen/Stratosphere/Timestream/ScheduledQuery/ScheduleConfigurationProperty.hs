module Stratosphere.Timestream.ScheduledQuery.ScheduleConfigurationProperty (
        ScheduleConfigurationProperty(..), mkScheduleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleConfigurationProperty
  = ScheduleConfigurationProperty {scheduleExpression :: (Value Prelude.Text)}
mkScheduleConfigurationProperty ::
  Value Prelude.Text -> ScheduleConfigurationProperty
mkScheduleConfigurationProperty scheduleExpression
  = ScheduleConfigurationProperty
      {scheduleExpression = scheduleExpression}
instance ToResourceProperties ScheduleConfigurationProperty where
  toResourceProperties ScheduleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.ScheduleConfiguration",
         properties = ["ScheduleExpression" JSON..= scheduleExpression]}
instance JSON.ToJSON ScheduleConfigurationProperty where
  toJSON ScheduleConfigurationProperty {..}
    = JSON.object ["ScheduleExpression" JSON..= scheduleExpression]
instance Property "ScheduleExpression" ScheduleConfigurationProperty where
  type PropertyType "ScheduleExpression" ScheduleConfigurationProperty = Value Prelude.Text
  set newValue ScheduleConfigurationProperty {}
    = ScheduleConfigurationProperty {scheduleExpression = newValue, ..}