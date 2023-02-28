module Stratosphere.GameLift.Fleet.LocationConfigurationProperty (
        module Exports, LocationConfigurationProperty(..),
        mkLocationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.Fleet.LocationCapacityProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LocationConfigurationProperty
  = LocationConfigurationProperty {location :: (Value Prelude.Text),
                                   locationCapacity :: (Prelude.Maybe LocationCapacityProperty)}
mkLocationConfigurationProperty ::
  Value Prelude.Text -> LocationConfigurationProperty
mkLocationConfigurationProperty location
  = LocationConfigurationProperty
      {location = location, locationCapacity = Prelude.Nothing}
instance ToResourceProperties LocationConfigurationProperty where
  toResourceProperties LocationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet.LocationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Location" JSON..= location]
                           (Prelude.catMaybes
                              [(JSON..=) "LocationCapacity" Prelude.<$> locationCapacity]))}
instance JSON.ToJSON LocationConfigurationProperty where
  toJSON LocationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Location" JSON..= location]
              (Prelude.catMaybes
                 [(JSON..=) "LocationCapacity" Prelude.<$> locationCapacity])))
instance Property "Location" LocationConfigurationProperty where
  type PropertyType "Location" LocationConfigurationProperty = Value Prelude.Text
  set newValue LocationConfigurationProperty {..}
    = LocationConfigurationProperty {location = newValue, ..}
instance Property "LocationCapacity" LocationConfigurationProperty where
  type PropertyType "LocationCapacity" LocationConfigurationProperty = LocationCapacityProperty
  set newValue LocationConfigurationProperty {..}
    = LocationConfigurationProperty
        {locationCapacity = Prelude.pure newValue, ..}