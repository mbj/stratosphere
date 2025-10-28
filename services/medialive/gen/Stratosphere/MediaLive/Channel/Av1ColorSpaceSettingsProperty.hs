module Stratosphere.MediaLive.Channel.Av1ColorSpaceSettingsProperty (
        module Exports, Av1ColorSpaceSettingsProperty(..),
        mkAv1ColorSpaceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.ColorSpacePassthroughSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Hdr10SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Rec601SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Rec709SettingsProperty as Exports
import Stratosphere.ResourceProperties
data Av1ColorSpaceSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-av1colorspacesettings.html>
    Av1ColorSpaceSettingsProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-av1colorspacesettings.html#cfn-medialive-channel-av1colorspacesettings-colorspacepassthroughsettings>
                                   colorSpacePassthroughSettings :: (Prelude.Maybe ColorSpacePassthroughSettingsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-av1colorspacesettings.html#cfn-medialive-channel-av1colorspacesettings-hdr10settings>
                                   hdr10Settings :: (Prelude.Maybe Hdr10SettingsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-av1colorspacesettings.html#cfn-medialive-channel-av1colorspacesettings-rec601settings>
                                   rec601Settings :: (Prelude.Maybe Rec601SettingsProperty),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-av1colorspacesettings.html#cfn-medialive-channel-av1colorspacesettings-rec709settings>
                                   rec709Settings :: (Prelude.Maybe Rec709SettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAv1ColorSpaceSettingsProperty :: Av1ColorSpaceSettingsProperty
mkAv1ColorSpaceSettingsProperty
  = Av1ColorSpaceSettingsProperty
      {haddock_workaround_ = (),
       colorSpacePassthroughSettings = Prelude.Nothing,
       hdr10Settings = Prelude.Nothing, rec601Settings = Prelude.Nothing,
       rec709Settings = Prelude.Nothing}
instance ToResourceProperties Av1ColorSpaceSettingsProperty where
  toResourceProperties Av1ColorSpaceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Av1ColorSpaceSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorSpacePassthroughSettings"
                              Prelude.<$> colorSpacePassthroughSettings,
                            (JSON..=) "Hdr10Settings" Prelude.<$> hdr10Settings,
                            (JSON..=) "Rec601Settings" Prelude.<$> rec601Settings,
                            (JSON..=) "Rec709Settings" Prelude.<$> rec709Settings])}
instance JSON.ToJSON Av1ColorSpaceSettingsProperty where
  toJSON Av1ColorSpaceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorSpacePassthroughSettings"
                 Prelude.<$> colorSpacePassthroughSettings,
               (JSON..=) "Hdr10Settings" Prelude.<$> hdr10Settings,
               (JSON..=) "Rec601Settings" Prelude.<$> rec601Settings,
               (JSON..=) "Rec709Settings" Prelude.<$> rec709Settings]))
instance Property "ColorSpacePassthroughSettings" Av1ColorSpaceSettingsProperty where
  type PropertyType "ColorSpacePassthroughSettings" Av1ColorSpaceSettingsProperty = ColorSpacePassthroughSettingsProperty
  set newValue Av1ColorSpaceSettingsProperty {..}
    = Av1ColorSpaceSettingsProperty
        {colorSpacePassthroughSettings = Prelude.pure newValue, ..}
instance Property "Hdr10Settings" Av1ColorSpaceSettingsProperty where
  type PropertyType "Hdr10Settings" Av1ColorSpaceSettingsProperty = Hdr10SettingsProperty
  set newValue Av1ColorSpaceSettingsProperty {..}
    = Av1ColorSpaceSettingsProperty
        {hdr10Settings = Prelude.pure newValue, ..}
instance Property "Rec601Settings" Av1ColorSpaceSettingsProperty where
  type PropertyType "Rec601Settings" Av1ColorSpaceSettingsProperty = Rec601SettingsProperty
  set newValue Av1ColorSpaceSettingsProperty {..}
    = Av1ColorSpaceSettingsProperty
        {rec601Settings = Prelude.pure newValue, ..}
instance Property "Rec709Settings" Av1ColorSpaceSettingsProperty where
  type PropertyType "Rec709Settings" Av1ColorSpaceSettingsProperty = Rec709SettingsProperty
  set newValue Av1ColorSpaceSettingsProperty {..}
    = Av1ColorSpaceSettingsProperty
        {rec709Settings = Prelude.pure newValue, ..}