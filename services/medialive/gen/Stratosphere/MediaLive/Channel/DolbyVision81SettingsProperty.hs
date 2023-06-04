module Stratosphere.MediaLive.Channel.DolbyVision81SettingsProperty (
        DolbyVision81SettingsProperty(..), mkDolbyVision81SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DolbyVision81SettingsProperty
  = DolbyVision81SettingsProperty {}
mkDolbyVision81SettingsProperty :: DolbyVision81SettingsProperty
mkDolbyVision81SettingsProperty = DolbyVision81SettingsProperty {}
instance ToResourceProperties DolbyVision81SettingsProperty where
  toResourceProperties DolbyVision81SettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.DolbyVision81Settings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON DolbyVision81SettingsProperty where
  toJSON DolbyVision81SettingsProperty {} = JSON.object []