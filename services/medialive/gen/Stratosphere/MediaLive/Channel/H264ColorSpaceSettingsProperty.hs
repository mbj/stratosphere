module Stratosphere.MediaLive.Channel.H264ColorSpaceSettingsProperty (
        module Exports, H264ColorSpaceSettingsProperty(..),
        mkH264ColorSpaceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.ColorSpacePassthroughSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Rec601SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Rec709SettingsProperty as Exports
import Stratosphere.ResourceProperties
data H264ColorSpaceSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html>
    H264ColorSpaceSettingsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-colorspacepassthroughsettings>
                                    colorSpacePassthroughSettings :: (Prelude.Maybe ColorSpacePassthroughSettingsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-rec601settings>
                                    rec601Settings :: (Prelude.Maybe Rec601SettingsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h264colorspacesettings.html#cfn-medialive-channel-h264colorspacesettings-rec709settings>
                                    rec709Settings :: (Prelude.Maybe Rec709SettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkH264ColorSpaceSettingsProperty :: H264ColorSpaceSettingsProperty
mkH264ColorSpaceSettingsProperty
  = H264ColorSpaceSettingsProperty
      {haddock_workaround_ = (),
       colorSpacePassthroughSettings = Prelude.Nothing,
       rec601Settings = Prelude.Nothing, rec709Settings = Prelude.Nothing}
instance ToResourceProperties H264ColorSpaceSettingsProperty where
  toResourceProperties H264ColorSpaceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.H264ColorSpaceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorSpacePassthroughSettings"
                              Prelude.<$> colorSpacePassthroughSettings,
                            (JSON..=) "Rec601Settings" Prelude.<$> rec601Settings,
                            (JSON..=) "Rec709Settings" Prelude.<$> rec709Settings])}
instance JSON.ToJSON H264ColorSpaceSettingsProperty where
  toJSON H264ColorSpaceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorSpacePassthroughSettings"
                 Prelude.<$> colorSpacePassthroughSettings,
               (JSON..=) "Rec601Settings" Prelude.<$> rec601Settings,
               (JSON..=) "Rec709Settings" Prelude.<$> rec709Settings]))
instance Property "ColorSpacePassthroughSettings" H264ColorSpaceSettingsProperty where
  type PropertyType "ColorSpacePassthroughSettings" H264ColorSpaceSettingsProperty = ColorSpacePassthroughSettingsProperty
  set newValue H264ColorSpaceSettingsProperty {..}
    = H264ColorSpaceSettingsProperty
        {colorSpacePassthroughSettings = Prelude.pure newValue, ..}
instance Property "Rec601Settings" H264ColorSpaceSettingsProperty where
  type PropertyType "Rec601Settings" H264ColorSpaceSettingsProperty = Rec601SettingsProperty
  set newValue H264ColorSpaceSettingsProperty {..}
    = H264ColorSpaceSettingsProperty
        {rec601Settings = Prelude.pure newValue, ..}
instance Property "Rec709Settings" H264ColorSpaceSettingsProperty where
  type PropertyType "Rec709Settings" H264ColorSpaceSettingsProperty = Rec709SettingsProperty
  set newValue H264ColorSpaceSettingsProperty {..}
    = H264ColorSpaceSettingsProperty
        {rec709Settings = Prelude.pure newValue, ..}