module Stratosphere.InspectorV2.CisScanConfiguration.TimeProperty (
        TimeProperty(..), mkTimeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeProperty
  = TimeProperty {timeOfDay :: (Value Prelude.Text),
                  timeZone :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> TimeProperty
mkTimeProperty timeOfDay timeZone
  = TimeProperty {timeOfDay = timeOfDay, timeZone = timeZone}
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