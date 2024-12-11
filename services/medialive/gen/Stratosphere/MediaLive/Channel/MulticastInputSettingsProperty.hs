module Stratosphere.MediaLive.Channel.MulticastInputSettingsProperty (
        MulticastInputSettingsProperty(..),
        mkMulticastInputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MulticastInputSettingsProperty
  = MulticastInputSettingsProperty {sourceIpAddress :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMulticastInputSettingsProperty :: MulticastInputSettingsProperty
mkMulticastInputSettingsProperty
  = MulticastInputSettingsProperty
      {sourceIpAddress = Prelude.Nothing}
instance ToResourceProperties MulticastInputSettingsProperty where
  toResourceProperties MulticastInputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MulticastInputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SourceIpAddress" Prelude.<$> sourceIpAddress])}
instance JSON.ToJSON MulticastInputSettingsProperty where
  toJSON MulticastInputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SourceIpAddress" Prelude.<$> sourceIpAddress]))
instance Property "SourceIpAddress" MulticastInputSettingsProperty where
  type PropertyType "SourceIpAddress" MulticastInputSettingsProperty = Value Prelude.Text
  set newValue MulticastInputSettingsProperty {}
    = MulticastInputSettingsProperty
        {sourceIpAddress = Prelude.pure newValue, ..}