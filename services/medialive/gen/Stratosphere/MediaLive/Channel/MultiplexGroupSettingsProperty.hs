module Stratosphere.MediaLive.Channel.MultiplexGroupSettingsProperty (
        MultiplexGroupSettingsProperty(..),
        mkMultiplexGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MultiplexGroupSettingsProperty
  = MultiplexGroupSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiplexGroupSettingsProperty :: MultiplexGroupSettingsProperty
mkMultiplexGroupSettingsProperty
  = MultiplexGroupSettingsProperty {}
instance ToResourceProperties MultiplexGroupSettingsProperty where
  toResourceProperties MultiplexGroupSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MultiplexGroupSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON MultiplexGroupSettingsProperty where
  toJSON MultiplexGroupSettingsProperty {} = JSON.object []