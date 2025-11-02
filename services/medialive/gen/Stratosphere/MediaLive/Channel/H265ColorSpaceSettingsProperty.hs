module Stratosphere.MediaLive.Channel.H265ColorSpaceSettingsProperty (
        module Exports, H265ColorSpaceSettingsProperty(..),
        mkH265ColorSpaceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.ColorSpacePassthroughSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.DolbyVision81SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Hdr10SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Rec601SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Rec709SettingsProperty as Exports
import Stratosphere.ResourceProperties
data H265ColorSpaceSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html>
    H265ColorSpaceSettingsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-colorspacepassthroughsettings>
                                    colorSpacePassthroughSettings :: (Prelude.Maybe ColorSpacePassthroughSettingsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-dolbyvision81settings>
                                    dolbyVision81Settings :: (Prelude.Maybe DolbyVision81SettingsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-hdr10settings>
                                    hdr10Settings :: (Prelude.Maybe Hdr10SettingsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-rec601settings>
                                    rec601Settings :: (Prelude.Maybe Rec601SettingsProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-h265colorspacesettings.html#cfn-medialive-channel-h265colorspacesettings-rec709settings>
                                    rec709Settings :: (Prelude.Maybe Rec709SettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkH265ColorSpaceSettingsProperty :: H265ColorSpaceSettingsProperty
mkH265ColorSpaceSettingsProperty
  = H265ColorSpaceSettingsProperty
      {haddock_workaround_ = (),
       colorSpacePassthroughSettings = Prelude.Nothing,
       dolbyVision81Settings = Prelude.Nothing,
       hdr10Settings = Prelude.Nothing, rec601Settings = Prelude.Nothing,
       rec709Settings = Prelude.Nothing}
instance ToResourceProperties H265ColorSpaceSettingsProperty where
  toResourceProperties H265ColorSpaceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.H265ColorSpaceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorSpacePassthroughSettings"
                              Prelude.<$> colorSpacePassthroughSettings,
                            (JSON..=) "DolbyVision81Settings"
                              Prelude.<$> dolbyVision81Settings,
                            (JSON..=) "Hdr10Settings" Prelude.<$> hdr10Settings,
                            (JSON..=) "Rec601Settings" Prelude.<$> rec601Settings,
                            (JSON..=) "Rec709Settings" Prelude.<$> rec709Settings])}
instance JSON.ToJSON H265ColorSpaceSettingsProperty where
  toJSON H265ColorSpaceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorSpacePassthroughSettings"
                 Prelude.<$> colorSpacePassthroughSettings,
               (JSON..=) "DolbyVision81Settings"
                 Prelude.<$> dolbyVision81Settings,
               (JSON..=) "Hdr10Settings" Prelude.<$> hdr10Settings,
               (JSON..=) "Rec601Settings" Prelude.<$> rec601Settings,
               (JSON..=) "Rec709Settings" Prelude.<$> rec709Settings]))
instance Property "ColorSpacePassthroughSettings" H265ColorSpaceSettingsProperty where
  type PropertyType "ColorSpacePassthroughSettings" H265ColorSpaceSettingsProperty = ColorSpacePassthroughSettingsProperty
  set newValue H265ColorSpaceSettingsProperty {..}
    = H265ColorSpaceSettingsProperty
        {colorSpacePassthroughSettings = Prelude.pure newValue, ..}
instance Property "DolbyVision81Settings" H265ColorSpaceSettingsProperty where
  type PropertyType "DolbyVision81Settings" H265ColorSpaceSettingsProperty = DolbyVision81SettingsProperty
  set newValue H265ColorSpaceSettingsProperty {..}
    = H265ColorSpaceSettingsProperty
        {dolbyVision81Settings = Prelude.pure newValue, ..}
instance Property "Hdr10Settings" H265ColorSpaceSettingsProperty where
  type PropertyType "Hdr10Settings" H265ColorSpaceSettingsProperty = Hdr10SettingsProperty
  set newValue H265ColorSpaceSettingsProperty {..}
    = H265ColorSpaceSettingsProperty
        {hdr10Settings = Prelude.pure newValue, ..}
instance Property "Rec601Settings" H265ColorSpaceSettingsProperty where
  type PropertyType "Rec601Settings" H265ColorSpaceSettingsProperty = Rec601SettingsProperty
  set newValue H265ColorSpaceSettingsProperty {..}
    = H265ColorSpaceSettingsProperty
        {rec601Settings = Prelude.pure newValue, ..}
instance Property "Rec709Settings" H265ColorSpaceSettingsProperty where
  type PropertyType "Rec709Settings" H265ColorSpaceSettingsProperty = Rec709SettingsProperty
  set newValue H265ColorSpaceSettingsProperty {..}
    = H265ColorSpaceSettingsProperty
        {rec709Settings = Prelude.pure newValue, ..}