module Stratosphere.Timestream.ScheduledQuery.ScheduleConfigurationProperty (
        ScheduleConfigurationProperty(..), mkScheduleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-scheduleconfiguration.html>
    ScheduleConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-timestream-scheduledquery-scheduleconfiguration.html#cfn-timestream-scheduledquery-scheduleconfiguration-scheduleexpression>
                                   scheduleExpression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleConfigurationProperty ::
  Value Prelude.Text -> ScheduleConfigurationProperty
mkScheduleConfigurationProperty scheduleExpression
  = ScheduleConfigurationProperty
      {haddock_workaround_ = (), scheduleExpression = scheduleExpression}
instance ToResourceProperties ScheduleConfigurationProperty where
  toResourceProperties ScheduleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::ScheduledQuery.ScheduleConfiguration",
         supportsTags = Prelude.False,
         properties = ["ScheduleExpression" JSON..= scheduleExpression]}
instance JSON.ToJSON ScheduleConfigurationProperty where
  toJSON ScheduleConfigurationProperty {..}
    = JSON.object ["ScheduleExpression" JSON..= scheduleExpression]
instance Property "ScheduleExpression" ScheduleConfigurationProperty where
  type PropertyType "ScheduleExpression" ScheduleConfigurationProperty = Value Prelude.Text
  set newValue ScheduleConfigurationProperty {..}
    = ScheduleConfigurationProperty {scheduleExpression = newValue, ..}