module Stratosphere.MediaLive.Channel.MediaPackageOutputSettingsProperty (
        module Exports, MediaPackageOutputSettingsProperty(..),
        mkMediaPackageOutputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.MediaPackageV2DestinationSettingsProperty as Exports
import Stratosphere.ResourceProperties
data MediaPackageOutputSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputsettings.html>
    MediaPackageOutputSettingsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputsettings.html#cfn-medialive-channel-mediapackageoutputsettings-mediapackagev2destinationsettings>
                                        mediaPackageV2DestinationSettings :: (Prelude.Maybe MediaPackageV2DestinationSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaPackageOutputSettingsProperty ::
  MediaPackageOutputSettingsProperty
mkMediaPackageOutputSettingsProperty
  = MediaPackageOutputSettingsProperty
      {haddock_workaround_ = (),
       mediaPackageV2DestinationSettings = Prelude.Nothing}
instance ToResourceProperties MediaPackageOutputSettingsProperty where
  toResourceProperties MediaPackageOutputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MediaPackageOutputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MediaPackageV2DestinationSettings"
                              Prelude.<$> mediaPackageV2DestinationSettings])}
instance JSON.ToJSON MediaPackageOutputSettingsProperty where
  toJSON MediaPackageOutputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MediaPackageV2DestinationSettings"
                 Prelude.<$> mediaPackageV2DestinationSettings]))
instance Property "MediaPackageV2DestinationSettings" MediaPackageOutputSettingsProperty where
  type PropertyType "MediaPackageV2DestinationSettings" MediaPackageOutputSettingsProperty = MediaPackageV2DestinationSettingsProperty
  set newValue MediaPackageOutputSettingsProperty {..}
    = MediaPackageOutputSettingsProperty
        {mediaPackageV2DestinationSettings = Prelude.pure newValue, ..}