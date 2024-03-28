module Stratosphere.Route53.RecordSet.CoordinatesProperty (
        CoordinatesProperty(..), mkCoordinatesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CoordinatesProperty
  = CoordinatesProperty {latitude :: (Value Prelude.Text),
                         longitude :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCoordinatesProperty ::
  Value Prelude.Text -> Value Prelude.Text -> CoordinatesProperty
mkCoordinatesProperty latitude longitude
  = CoordinatesProperty {latitude = latitude, longitude = longitude}
instance ToResourceProperties CoordinatesProperty where
  toResourceProperties CoordinatesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53::RecordSet.Coordinates",
         supportsTags = Prelude.False,
         properties = ["Latitude" JSON..= latitude,
                       "Longitude" JSON..= longitude]}
instance JSON.ToJSON CoordinatesProperty where
  toJSON CoordinatesProperty {..}
    = JSON.object
        ["Latitude" JSON..= latitude, "Longitude" JSON..= longitude]
instance Property "Latitude" CoordinatesProperty where
  type PropertyType "Latitude" CoordinatesProperty = Value Prelude.Text
  set newValue CoordinatesProperty {..}
    = CoordinatesProperty {latitude = newValue, ..}
instance Property "Longitude" CoordinatesProperty where
  type PropertyType "Longitude" CoordinatesProperty = Value Prelude.Text
  set newValue CoordinatesProperty {..}
    = CoordinatesProperty {longitude = newValue, ..}