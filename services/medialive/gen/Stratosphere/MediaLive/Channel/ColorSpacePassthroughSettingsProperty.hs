module Stratosphere.MediaLive.Channel.ColorSpacePassthroughSettingsProperty (
        ColorSpacePassthroughSettingsProperty(..),
        mkColorSpacePassthroughSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ColorSpacePassthroughSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-colorspacepassthroughsettings.html>
    ColorSpacePassthroughSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkColorSpacePassthroughSettingsProperty ::
  ColorSpacePassthroughSettingsProperty
mkColorSpacePassthroughSettingsProperty
  = ColorSpacePassthroughSettingsProperty {haddock_workaround_ = ()}
instance ToResourceProperties ColorSpacePassthroughSettingsProperty where
  toResourceProperties ColorSpacePassthroughSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.ColorSpacePassthroughSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON ColorSpacePassthroughSettingsProperty where
  toJSON ColorSpacePassthroughSettingsProperty {} = JSON.object []