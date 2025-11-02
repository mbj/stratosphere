module Stratosphere.ApplicationSignals.ServiceLevelObjective.RollingIntervalProperty (
        RollingIntervalProperty(..), mkRollingIntervalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RollingIntervalProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-rollinginterval.html>
    RollingIntervalProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-rollinginterval.html#cfn-applicationsignals-servicelevelobjective-rollinginterval-duration>
                             duration :: (Value Prelude.Integer),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationsignals-servicelevelobjective-rollinginterval.html#cfn-applicationsignals-servicelevelobjective-rollinginterval-durationunit>
                             durationUnit :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRollingIntervalProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text -> RollingIntervalProperty
mkRollingIntervalProperty duration durationUnit
  = RollingIntervalProperty
      {haddock_workaround_ = (), duration = duration,
       durationUnit = durationUnit}
instance ToResourceProperties RollingIntervalProperty where
  toResourceProperties RollingIntervalProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.RollingInterval",
         supportsTags = Prelude.False,
         properties = ["Duration" JSON..= duration,
                       "DurationUnit" JSON..= durationUnit]}
instance JSON.ToJSON RollingIntervalProperty where
  toJSON RollingIntervalProperty {..}
    = JSON.object
        ["Duration" JSON..= duration, "DurationUnit" JSON..= durationUnit]
instance Property "Duration" RollingIntervalProperty where
  type PropertyType "Duration" RollingIntervalProperty = Value Prelude.Integer
  set newValue RollingIntervalProperty {..}
    = RollingIntervalProperty {duration = newValue, ..}
instance Property "DurationUnit" RollingIntervalProperty where
  type PropertyType "DurationUnit" RollingIntervalProperty = Value Prelude.Text
  set newValue RollingIntervalProperty {..}
    = RollingIntervalProperty {durationUnit = newValue, ..}