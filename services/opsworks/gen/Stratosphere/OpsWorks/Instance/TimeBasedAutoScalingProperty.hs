module Stratosphere.OpsWorks.Instance.TimeBasedAutoScalingProperty (
        TimeBasedAutoScalingProperty(..), mkTimeBasedAutoScalingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeBasedAutoScalingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html>
    TimeBasedAutoScalingProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-friday>
                                  friday :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-monday>
                                  monday :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-saturday>
                                  saturday :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-sunday>
                                  sunday :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-thursday>
                                  thursday :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-tuesday>
                                  tuesday :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-opsworks-instance-timebasedautoscaling.html#cfn-opsworks-instance-timebasedautoscaling-wednesday>
                                  wednesday :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeBasedAutoScalingProperty :: TimeBasedAutoScalingProperty
mkTimeBasedAutoScalingProperty
  = TimeBasedAutoScalingProperty
      {haddock_workaround_ = (), friday = Prelude.Nothing,
       monday = Prelude.Nothing, saturday = Prelude.Nothing,
       sunday = Prelude.Nothing, thursday = Prelude.Nothing,
       tuesday = Prelude.Nothing, wednesday = Prelude.Nothing}
instance ToResourceProperties TimeBasedAutoScalingProperty where
  toResourceProperties TimeBasedAutoScalingProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Instance.TimeBasedAutoScaling",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Friday" Prelude.<$> friday,
                            (JSON..=) "Monday" Prelude.<$> monday,
                            (JSON..=) "Saturday" Prelude.<$> saturday,
                            (JSON..=) "Sunday" Prelude.<$> sunday,
                            (JSON..=) "Thursday" Prelude.<$> thursday,
                            (JSON..=) "Tuesday" Prelude.<$> tuesday,
                            (JSON..=) "Wednesday" Prelude.<$> wednesday])}
instance JSON.ToJSON TimeBasedAutoScalingProperty where
  toJSON TimeBasedAutoScalingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Friday" Prelude.<$> friday,
               (JSON..=) "Monday" Prelude.<$> monday,
               (JSON..=) "Saturday" Prelude.<$> saturday,
               (JSON..=) "Sunday" Prelude.<$> sunday,
               (JSON..=) "Thursday" Prelude.<$> thursday,
               (JSON..=) "Tuesday" Prelude.<$> tuesday,
               (JSON..=) "Wednesday" Prelude.<$> wednesday]))
instance Property "Friday" TimeBasedAutoScalingProperty where
  type PropertyType "Friday" TimeBasedAutoScalingProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TimeBasedAutoScalingProperty {..}
    = TimeBasedAutoScalingProperty {friday = Prelude.pure newValue, ..}
instance Property "Monday" TimeBasedAutoScalingProperty where
  type PropertyType "Monday" TimeBasedAutoScalingProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TimeBasedAutoScalingProperty {..}
    = TimeBasedAutoScalingProperty {monday = Prelude.pure newValue, ..}
instance Property "Saturday" TimeBasedAutoScalingProperty where
  type PropertyType "Saturday" TimeBasedAutoScalingProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TimeBasedAutoScalingProperty {..}
    = TimeBasedAutoScalingProperty
        {saturday = Prelude.pure newValue, ..}
instance Property "Sunday" TimeBasedAutoScalingProperty where
  type PropertyType "Sunday" TimeBasedAutoScalingProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TimeBasedAutoScalingProperty {..}
    = TimeBasedAutoScalingProperty {sunday = Prelude.pure newValue, ..}
instance Property "Thursday" TimeBasedAutoScalingProperty where
  type PropertyType "Thursday" TimeBasedAutoScalingProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TimeBasedAutoScalingProperty {..}
    = TimeBasedAutoScalingProperty
        {thursday = Prelude.pure newValue, ..}
instance Property "Tuesday" TimeBasedAutoScalingProperty where
  type PropertyType "Tuesday" TimeBasedAutoScalingProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TimeBasedAutoScalingProperty {..}
    = TimeBasedAutoScalingProperty
        {tuesday = Prelude.pure newValue, ..}
instance Property "Wednesday" TimeBasedAutoScalingProperty where
  type PropertyType "Wednesday" TimeBasedAutoScalingProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue TimeBasedAutoScalingProperty {..}
    = TimeBasedAutoScalingProperty
        {wednesday = Prelude.pure newValue, ..}