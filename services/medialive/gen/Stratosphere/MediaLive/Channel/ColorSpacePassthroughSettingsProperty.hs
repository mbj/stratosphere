module Stratosphere.MediaLive.Channel.ColorSpacePassthroughSettingsProperty (
        ColorSpacePassthroughSettingsProperty(..),
        mkColorSpacePassthroughSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
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
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON ColorSpacePassthroughSettingsProperty where
  toJSON ColorSpacePassthroughSettingsProperty {} = JSON.object []