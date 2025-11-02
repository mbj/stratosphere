module Stratosphere.MediaLive.Multiplex.MultiplexMediaConnectOutputDestinationSettingsProperty (
        MultiplexMediaConnectOutputDestinationSettingsProperty(..),
        mkMultiplexMediaConnectOutputDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiplexMediaConnectOutputDestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplex-multiplexmediaconnectoutputdestinationsettings.html>
    MultiplexMediaConnectOutputDestinationSettingsProperty {haddock_workaround_ :: (),
                                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-multiplex-multiplexmediaconnectoutputdestinationsettings.html#cfn-medialive-multiplex-multiplexmediaconnectoutputdestinationsettings-entitlementarn>
                                                            entitlementArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexMediaConnectOutputDestinationSettingsProperty ::
  MultiplexMediaConnectOutputDestinationSettingsProperty
mkMultiplexMediaConnectOutputDestinationSettingsProperty
  = MultiplexMediaConnectOutputDestinationSettingsProperty
      {haddock_workaround_ = (), entitlementArn = Prelude.Nothing}
instance ToResourceProperties MultiplexMediaConnectOutputDestinationSettingsProperty where
  toResourceProperties
    MultiplexMediaConnectOutputDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Multiplex.MultiplexMediaConnectOutputDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EntitlementArn" Prelude.<$> entitlementArn])}
instance JSON.ToJSON MultiplexMediaConnectOutputDestinationSettingsProperty where
  toJSON MultiplexMediaConnectOutputDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EntitlementArn" Prelude.<$> entitlementArn]))
instance Property "EntitlementArn" MultiplexMediaConnectOutputDestinationSettingsProperty where
  type PropertyType "EntitlementArn" MultiplexMediaConnectOutputDestinationSettingsProperty = Value Prelude.Text
  set
    newValue
    MultiplexMediaConnectOutputDestinationSettingsProperty {..}
    = MultiplexMediaConnectOutputDestinationSettingsProperty
        {entitlementArn = Prelude.pure newValue, ..}