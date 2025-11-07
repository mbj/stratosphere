module Stratosphere.ApplicationSignals.ServiceLevelObjective.WindowProperty (
        WindowProperty(..), mkWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WindowProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-window.html>
    WindowProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-window.html#cfn-applicationsignals-servicelevelobjective-window-duration>
                    duration :: (Value Prelude.Integer),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-window.html#cfn-applicationsignals-servicelevelobjective-window-durationunit>
                    durationUnit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWindowProperty ::
  Value Prelude.Integer -> Value Prelude.Text -> WindowProperty
mkWindowProperty duration durationUnit
  = WindowProperty
      {haddock_workaround_ = (), duration = duration,
       durationUnit = durationUnit}
instance ToResourceProperties WindowProperty where
  toResourceProperties WindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.Window",
         supportsTags = Prelude.False,
         properties = ["Duration" JSON..= duration,
                       "DurationUnit" JSON..= durationUnit]}
instance JSON.ToJSON WindowProperty where
  toJSON WindowProperty {..}
    = JSON.object
        ["Duration" JSON..= duration, "DurationUnit" JSON..= durationUnit]
instance Property "Duration" WindowProperty where
  type PropertyType "Duration" WindowProperty = Value Prelude.Integer
  set newValue WindowProperty {..}
    = WindowProperty {duration = newValue, ..}
instance Property "DurationUnit" WindowProperty where
  type PropertyType "DurationUnit" WindowProperty = Value Prelude.Text
  set newValue WindowProperty {..}
    = WindowProperty {durationUnit = newValue, ..}