module Stratosphere.MediaLive.Channel.MediaPackageGroupSettingsProperty (
        module Exports, MediaPackageGroupSettingsProperty(..),
        mkMediaPackageGroupSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MediaPackageV2GroupSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.OutputLocationRefProperty as Exports
import Stratosphere.ResourceProperties
data MediaPackageGroupSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagegroupsettings.html>
    MediaPackageGroupSettingsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagegroupsettings.html#cfn-medialive-channel-mediapackagegroupsettings-destination>
                                       destination :: (Prelude.Maybe OutputLocationRefProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackagegroupsettings.html#cfn-medialive-channel-mediapackagegroupsettings-mediapackagev2groupsettings>
                                       mediapackageV2GroupSettings :: (Prelude.Maybe MediaPackageV2GroupSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaPackageGroupSettingsProperty ::
  MediaPackageGroupSettingsProperty
mkMediaPackageGroupSettingsProperty
  = MediaPackageGroupSettingsProperty
      {haddock_workaround_ = (), destination = Prelude.Nothing,
       mediapackageV2GroupSettings = Prelude.Nothing}
instance ToResourceProperties MediaPackageGroupSettingsProperty where
  toResourceProperties MediaPackageGroupSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MediaPackageGroupSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Destination" Prelude.<$> destination,
                            (JSON..=) "MediapackageV2GroupSettings"
                              Prelude.<$> mediapackageV2GroupSettings])}
instance JSON.ToJSON MediaPackageGroupSettingsProperty where
  toJSON MediaPackageGroupSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Destination" Prelude.<$> destination,
               (JSON..=) "MediapackageV2GroupSettings"
                 Prelude.<$> mediapackageV2GroupSettings]))
instance Property "Destination" MediaPackageGroupSettingsProperty where
  type PropertyType "Destination" MediaPackageGroupSettingsProperty = OutputLocationRefProperty
  set newValue MediaPackageGroupSettingsProperty {..}
    = MediaPackageGroupSettingsProperty
        {destination = Prelude.pure newValue, ..}
instance Property "MediapackageV2GroupSettings" MediaPackageGroupSettingsProperty where
  type PropertyType "MediapackageV2GroupSettings" MediaPackageGroupSettingsProperty = MediaPackageV2GroupSettingsProperty
  set newValue MediaPackageGroupSettingsProperty {..}
    = MediaPackageGroupSettingsProperty
        {mediapackageV2GroupSettings = Prelude.pure newValue, ..}