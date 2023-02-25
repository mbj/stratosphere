module Stratosphere.MediaLive.Channel.PassThroughSettingsProperty (
        PassThroughSettingsProperty(..), mkPassThroughSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data PassThroughSettingsProperty = PassThroughSettingsProperty {}
mkPassThroughSettingsProperty :: PassThroughSettingsProperty
mkPassThroughSettingsProperty = PassThroughSettingsProperty {}
instance ToResourceProperties PassThroughSettingsProperty where
  toResourceProperties PassThroughSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.PassThroughSettings",
         properties = []}
instance JSON.ToJSON PassThroughSettingsProperty where
  toJSON PassThroughSettingsProperty {} = JSON.object []