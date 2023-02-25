module Stratosphere.GroundStation.Config.TrackingConfigProperty (
        TrackingConfigProperty(..), mkTrackingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrackingConfigProperty
  = TrackingConfigProperty {autotrack :: (Prelude.Maybe (Value Prelude.Text))}
mkTrackingConfigProperty :: TrackingConfigProperty
mkTrackingConfigProperty
  = TrackingConfigProperty {autotrack = Prelude.Nothing}
instance ToResourceProperties TrackingConfigProperty where
  toResourceProperties TrackingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.TrackingConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Autotrack" Prelude.<$> autotrack])}
instance JSON.ToJSON TrackingConfigProperty where
  toJSON TrackingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Autotrack" Prelude.<$> autotrack]))
instance Property "Autotrack" TrackingConfigProperty where
  type PropertyType "Autotrack" TrackingConfigProperty = Value Prelude.Text
  set newValue TrackingConfigProperty {}
    = TrackingConfigProperty {autotrack = Prelude.pure newValue, ..}