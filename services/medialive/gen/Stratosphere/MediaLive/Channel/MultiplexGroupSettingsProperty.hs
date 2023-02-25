module Stratosphere.MediaLive.Channel.MultiplexGroupSettingsProperty (
        MultiplexGroupSettingsProperty(..),
        mkMultiplexGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data MultiplexGroupSettingsProperty
  = MultiplexGroupSettingsProperty {}
mkMultiplexGroupSettingsProperty :: MultiplexGroupSettingsProperty
mkMultiplexGroupSettingsProperty
  = MultiplexGroupSettingsProperty {}
instance ToResourceProperties MultiplexGroupSettingsProperty where
  toResourceProperties MultiplexGroupSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MultiplexGroupSettings",
         properties = []}
instance JSON.ToJSON MultiplexGroupSettingsProperty where
  toJSON MultiplexGroupSettingsProperty {} = JSON.object []