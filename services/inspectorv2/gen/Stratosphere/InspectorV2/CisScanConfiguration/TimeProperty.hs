module Stratosphere.InspectorV2.CisScanConfiguration.TimeProperty (
        TimeProperty(..), mkTimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-time.html>
    TimeProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-time.html#cfn-inspectorv2-cisscanconfiguration-time-timeofday>
                  timeOfDay :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-time.html#cfn-inspectorv2-cisscanconfiguration-time-timezone>
                  timeZone :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TimeProperty
mkTimeProperty timeOfDay timeZone
  = TimeProperty
      {haddock_workaround_ = (), timeOfDay = timeOfDay,
       timeZone = timeZone}
instance ToResourceProperties TimeProperty where
  toResourceProperties TimeProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CisScanConfiguration.Time",
         supportsTags = Prelude.False,
         properties = ["TimeOfDay" JSON..= timeOfDay,
                       "TimeZone" JSON..= timeZone]}
instance JSON.ToJSON TimeProperty where
  toJSON TimeProperty {..}
    = JSON.object
        ["TimeOfDay" JSON..= timeOfDay, "TimeZone" JSON..= timeZone]
instance Property "TimeOfDay" TimeProperty where
  type PropertyType "TimeOfDay" TimeProperty = Value Prelude.Text
  set newValue TimeProperty {..}
    = TimeProperty {timeOfDay = newValue, ..}
instance Property "TimeZone" TimeProperty where
  type PropertyType "TimeZone" TimeProperty = Value Prelude.Text
  set newValue TimeProperty {..}
    = TimeProperty {timeZone = newValue, ..}