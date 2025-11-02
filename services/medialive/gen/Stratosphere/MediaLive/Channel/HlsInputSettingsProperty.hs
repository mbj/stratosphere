module Stratosphere.MediaLive.Channel.HlsInputSettingsProperty (
        HlsInputSettingsProperty(..), mkHlsInputSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HlsInputSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html>
    HlsInputSettingsProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-bandwidth>
                              bandwidth :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-buffersegments>
                              bufferSegments :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retries>
                              retries :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-retryinterval>
                              retryInterval :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-hlsinputsettings.html#cfn-medialive-channel-hlsinputsettings-scte35source>
                              scte35Source :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHlsInputSettingsProperty :: HlsInputSettingsProperty
mkHlsInputSettingsProperty
  = HlsInputSettingsProperty
      {haddock_workaround_ = (), bandwidth = Prelude.Nothing,
       bufferSegments = Prelude.Nothing, retries = Prelude.Nothing,
       retryInterval = Prelude.Nothing, scte35Source = Prelude.Nothing}
instance ToResourceProperties HlsInputSettingsProperty where
  toResourceProperties HlsInputSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsInputSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bandwidth" Prelude.<$> bandwidth,
                            (JSON..=) "BufferSegments" Prelude.<$> bufferSegments,
                            (JSON..=) "Retries" Prelude.<$> retries,
                            (JSON..=) "RetryInterval" Prelude.<$> retryInterval,
                            (JSON..=) "Scte35Source" Prelude.<$> scte35Source])}
instance JSON.ToJSON HlsInputSettingsProperty where
  toJSON HlsInputSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bandwidth" Prelude.<$> bandwidth,
               (JSON..=) "BufferSegments" Prelude.<$> bufferSegments,
               (JSON..=) "Retries" Prelude.<$> retries,
               (JSON..=) "RetryInterval" Prelude.<$> retryInterval,
               (JSON..=) "Scte35Source" Prelude.<$> scte35Source]))
instance Property "Bandwidth" HlsInputSettingsProperty where
  type PropertyType "Bandwidth" HlsInputSettingsProperty = Value Prelude.Integer
  set newValue HlsInputSettingsProperty {..}
    = HlsInputSettingsProperty {bandwidth = Prelude.pure newValue, ..}
instance Property "BufferSegments" HlsInputSettingsProperty where
  type PropertyType "BufferSegments" HlsInputSettingsProperty = Value Prelude.Integer
  set newValue HlsInputSettingsProperty {..}
    = HlsInputSettingsProperty
        {bufferSegments = Prelude.pure newValue, ..}
instance Property "Retries" HlsInputSettingsProperty where
  type PropertyType "Retries" HlsInputSettingsProperty = Value Prelude.Integer
  set newValue HlsInputSettingsProperty {..}
    = HlsInputSettingsProperty {retries = Prelude.pure newValue, ..}
instance Property "RetryInterval" HlsInputSettingsProperty where
  type PropertyType "RetryInterval" HlsInputSettingsProperty = Value Prelude.Integer
  set newValue HlsInputSettingsProperty {..}
    = HlsInputSettingsProperty
        {retryInterval = Prelude.pure newValue, ..}
instance Property "Scte35Source" HlsInputSettingsProperty where
  type PropertyType "Scte35Source" HlsInputSettingsProperty = Value Prelude.Text
  set newValue HlsInputSettingsProperty {..}
    = HlsInputSettingsProperty
        {scte35Source = Prelude.pure newValue, ..}