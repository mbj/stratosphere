module Stratosphere.MediaLive.Channel.RawSettingsProperty (
        RawSettingsProperty(..), mkRawSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data RawSettingsProperty = RawSettingsProperty {}
mkRawSettingsProperty :: RawSettingsProperty
mkRawSettingsProperty = RawSettingsProperty {}
instance ToResourceProperties RawSettingsProperty where
  toResourceProperties RawSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.RawSettings", properties = []}
instance JSON.ToJSON RawSettingsProperty where
  toJSON RawSettingsProperty {} = JSON.object []