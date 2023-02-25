module Stratosphere.NetworkManager.Site.LocationProperty (
        LocationProperty(..), mkLocationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocationProperty
  = LocationProperty {address :: (Prelude.Maybe (Value Prelude.Text)),
                      latitude :: (Prelude.Maybe (Value Prelude.Text)),
                      longitude :: (Prelude.Maybe (Value Prelude.Text))}
mkLocationProperty :: LocationProperty
mkLocationProperty
  = LocationProperty
      {address = Prelude.Nothing, latitude = Prelude.Nothing,
       longitude = Prelude.Nothing}
instance ToResourceProperties LocationProperty where
  toResourceProperties LocationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkManager::Site.Location",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Address" Prelude.<$> address,
                            (JSON..=) "Latitude" Prelude.<$> latitude,
                            (JSON..=) "Longitude" Prelude.<$> longitude])}
instance JSON.ToJSON LocationProperty where
  toJSON LocationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Address" Prelude.<$> address,
               (JSON..=) "Latitude" Prelude.<$> latitude,
               (JSON..=) "Longitude" Prelude.<$> longitude]))
instance Property "Address" LocationProperty where
  type PropertyType "Address" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {address = Prelude.pure newValue, ..}
instance Property "Latitude" LocationProperty where
  type PropertyType "Latitude" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {latitude = Prelude.pure newValue, ..}
instance Property "Longitude" LocationProperty where
  type PropertyType "Longitude" LocationProperty = Value Prelude.Text
  set newValue LocationProperty {..}
    = LocationProperty {longitude = Prelude.pure newValue, ..}