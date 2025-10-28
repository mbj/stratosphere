module Stratosphere.GroundStation.Config.TrackingConfigProperty (
        TrackingConfigProperty(..), mkTrackingConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrackingConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-trackingconfig.html>
    TrackingConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-config-trackingconfig.html#cfn-groundstation-config-trackingconfig-autotrack>
                            autotrack :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrackingConfigProperty :: TrackingConfigProperty
mkTrackingConfigProperty
  = TrackingConfigProperty
      {haddock_workaround_ = (), autotrack = Prelude.Nothing}
instance ToResourceProperties TrackingConfigProperty where
  toResourceProperties TrackingConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::Config.TrackingConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Autotrack" Prelude.<$> autotrack])}
instance JSON.ToJSON TrackingConfigProperty where
  toJSON TrackingConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Autotrack" Prelude.<$> autotrack]))
instance Property "Autotrack" TrackingConfigProperty where
  type PropertyType "Autotrack" TrackingConfigProperty = Value Prelude.Text
  set newValue TrackingConfigProperty {..}
    = TrackingConfigProperty {autotrack = Prelude.pure newValue, ..}