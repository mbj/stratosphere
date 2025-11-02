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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationconfiguration.html>
    LocationConfigurationProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationconfiguration.html#cfn-gamelift-fleet-locationconfiguration-location>
                                   location :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-locationconfiguration.html#cfn-gamelift-fleet-locationconfiguration-locationcapacity>
                                   locationCapacity :: (Prelude.Maybe LocationCapacityProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLocationConfigurationProperty ::
  Value Prelude.Text -> LocationConfigurationProperty
mkLocationConfigurationProperty location
  = LocationConfigurationProperty
      {haddock_workaround_ = (), location = location,
       locationCapacity = Prelude.Nothing}
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