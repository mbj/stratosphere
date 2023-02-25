module Stratosphere.MediaLive.Channel.ColorSpacePassthroughSettingsProperty (
        ColorSpacePassthroughSettingsProperty(..),
        mkColorSpacePassthroughSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data ColorSpacePassthroughSettingsProperty
  = ColorSpacePassthroughSettingsProperty {}
mkColorSpacePassthroughSettingsProperty ::
  ColorSpacePassthroughSettingsProperty
mkColorSpacePassthroughSettingsProperty
  = ColorSpacePassthroughSettingsProperty {}
instance ToResourceProperties ColorSpacePassthroughSettingsProperty where
  toResourceProperties ColorSpacePassthroughSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ColorSpacePassthroughSettings",
         properties = []}
instance JSON.ToJSON ColorSpacePassthroughSettingsProperty where
  toJSON ColorSpacePassthroughSettingsProperty {} = JSON.object []