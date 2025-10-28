module Stratosphere.MediaLive.Channel.Ac3SettingsProperty (
        Ac3SettingsProperty(..), mkAc3SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ac3SettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html>
    Ac3SettingsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-attenuationcontrol>
                         attenuationControl :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-bitrate>
                         bitrate :: (Prelude.Maybe (Value Prelude.Double)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-bitstreammode>
                         bitstreamMode :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-codingmode>
                         codingMode :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-dialnorm>
                         dialnorm :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-drcprofile>
                         drcProfile :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-lfefilter>
                         lfeFilter :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-ac3settings.html#cfn-medialive-channel-ac3settings-metadatacontrol>
                         metadataControl :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAc3SettingsProperty :: Ac3SettingsProperty
mkAc3SettingsProperty
  = Ac3SettingsProperty
      {haddock_workaround_ = (), attenuationControl = Prelude.Nothing,
       bitrate = Prelude.Nothing, bitstreamMode = Prelude.Nothing,
       codingMode = Prelude.Nothing, dialnorm = Prelude.Nothing,
       drcProfile = Prelude.Nothing, lfeFilter = Prelude.Nothing,
       metadataControl = Prelude.Nothing}
instance ToResourceProperties Ac3SettingsProperty where
  toResourceProperties Ac3SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Ac3Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AttenuationControl" Prelude.<$> attenuationControl,
                            (JSON..=) "Bitrate" Prelude.<$> bitrate,
                            (JSON..=) "BitstreamMode" Prelude.<$> bitstreamMode,
                            (JSON..=) "CodingMode" Prelude.<$> codingMode,
                            (JSON..=) "Dialnorm" Prelude.<$> dialnorm,
                            (JSON..=) "DrcProfile" Prelude.<$> drcProfile,
                            (JSON..=) "LfeFilter" Prelude.<$> lfeFilter,
                            (JSON..=) "MetadataControl" Prelude.<$> metadataControl])}
instance JSON.ToJSON Ac3SettingsProperty where
  toJSON Ac3SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AttenuationControl" Prelude.<$> attenuationControl,
               (JSON..=) "Bitrate" Prelude.<$> bitrate,
               (JSON..=) "BitstreamMode" Prelude.<$> bitstreamMode,
               (JSON..=) "CodingMode" Prelude.<$> codingMode,
               (JSON..=) "Dialnorm" Prelude.<$> dialnorm,
               (JSON..=) "DrcProfile" Prelude.<$> drcProfile,
               (JSON..=) "LfeFilter" Prelude.<$> lfeFilter,
               (JSON..=) "MetadataControl" Prelude.<$> metadataControl]))
instance Property "AttenuationControl" Ac3SettingsProperty where
  type PropertyType "AttenuationControl" Ac3SettingsProperty = Value Prelude.Text
  set newValue Ac3SettingsProperty {..}
    = Ac3SettingsProperty
        {attenuationControl = Prelude.pure newValue, ..}
instance Property "Bitrate" Ac3SettingsProperty where
  type PropertyType "Bitrate" Ac3SettingsProperty = Value Prelude.Double
  set newValue Ac3SettingsProperty {..}
    = Ac3SettingsProperty {bitrate = Prelude.pure newValue, ..}
instance Property "BitstreamMode" Ac3SettingsProperty where
  type PropertyType "BitstreamMode" Ac3SettingsProperty = Value Prelude.Text
  set newValue Ac3SettingsProperty {..}
    = Ac3SettingsProperty {bitstreamMode = Prelude.pure newValue, ..}
instance Property "CodingMode" Ac3SettingsProperty where
  type PropertyType "CodingMode" Ac3SettingsProperty = Value Prelude.Text
  set newValue Ac3SettingsProperty {..}
    = Ac3SettingsProperty {codingMode = Prelude.pure newValue, ..}
instance Property "Dialnorm" Ac3SettingsProperty where
  type PropertyType "Dialnorm" Ac3SettingsProperty = Value Prelude.Integer
  set newValue Ac3SettingsProperty {..}
    = Ac3SettingsProperty {dialnorm = Prelude.pure newValue, ..}
instance Property "DrcProfile" Ac3SettingsProperty where
  type PropertyType "DrcProfile" Ac3SettingsProperty = Value Prelude.Text
  set newValue Ac3SettingsProperty {..}
    = Ac3SettingsProperty {drcProfile = Prelude.pure newValue, ..}
instance Property "LfeFilter" Ac3SettingsProperty where
  type PropertyType "LfeFilter" Ac3SettingsProperty = Value Prelude.Text
  set newValue Ac3SettingsProperty {..}
    = Ac3SettingsProperty {lfeFilter = Prelude.pure newValue, ..}
instance Property "MetadataControl" Ac3SettingsProperty where
  type PropertyType "MetadataControl" Ac3SettingsProperty = Value Prelude.Text
  set newValue Ac3SettingsProperty {..}
    = Ac3SettingsProperty {metadataControl = Prelude.pure newValue, ..}