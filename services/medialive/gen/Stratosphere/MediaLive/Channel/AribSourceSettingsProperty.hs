module Stratosphere.MediaLive.Channel.AribSourceSettingsProperty (
        AribSourceSettingsProperty(..), mkAribSourceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data AribSourceSettingsProperty = AribSourceSettingsProperty {}
mkAribSourceSettingsProperty :: AribSourceSettingsProperty
mkAribSourceSettingsProperty = AribSourceSettingsProperty {}
instance ToResourceProperties AribSourceSettingsProperty where
  toResourceProperties AribSourceSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AribSourceSettings",
         properties = []}
instance JSON.ToJSON AribSourceSettingsProperty where
  toJSON AribSourceSettingsProperty {} = JSON.object []