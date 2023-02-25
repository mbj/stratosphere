module Stratosphere.GameLift.GameSessionQueue.FilterConfigurationProperty (
        FilterConfigurationProperty(..), mkFilterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterConfigurationProperty
  = FilterConfigurationProperty {allowedLocations :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkFilterConfigurationProperty :: FilterConfigurationProperty
mkFilterConfigurationProperty
  = FilterConfigurationProperty {allowedLocations = Prelude.Nothing}
instance ToResourceProperties FilterConfigurationProperty where
  toResourceProperties FilterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameSessionQueue.FilterConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllowedLocations" Prelude.<$> allowedLocations])}
instance JSON.ToJSON FilterConfigurationProperty where
  toJSON FilterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllowedLocations" Prelude.<$> allowedLocations]))
instance Property "AllowedLocations" FilterConfigurationProperty where
  type PropertyType "AllowedLocations" FilterConfigurationProperty = ValueList (Value Prelude.Text)
  set newValue FilterConfigurationProperty {}
    = FilterConfigurationProperty
        {allowedLocations = Prelude.pure newValue, ..}