module Stratosphere.MediaPackageV2.OriginEndpoint.EncryptionContractConfigurationProperty (
        EncryptionContractConfigurationProperty(..),
        mkEncryptionContractConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionContractConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryptioncontractconfiguration.html>
    EncryptionContractConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryptioncontractconfiguration.html#cfn-mediapackagev2-originendpoint-encryptioncontractconfiguration-presetspeke20audio>
                                             presetSpeke20Audio :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-encryptioncontractconfiguration.html#cfn-mediapackagev2-originendpoint-encryptioncontractconfiguration-presetspeke20video>
                                             presetSpeke20Video :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEncryptionContractConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EncryptionContractConfigurationProperty
mkEncryptionContractConfigurationProperty
  presetSpeke20Audio
  presetSpeke20Video
  = EncryptionContractConfigurationProperty
      {haddock_workaround_ = (), presetSpeke20Audio = presetSpeke20Audio,
       presetSpeke20Video = presetSpeke20Video}
instance ToResourceProperties EncryptionContractConfigurationProperty where
  toResourceProperties EncryptionContractConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.EncryptionContractConfiguration",
         supportsTags = Prelude.False,
         properties = ["PresetSpeke20Audio" JSON..= presetSpeke20Audio,
                       "PresetSpeke20Video" JSON..= presetSpeke20Video]}
instance JSON.ToJSON EncryptionContractConfigurationProperty where
  toJSON EncryptionContractConfigurationProperty {..}
    = JSON.object
        ["PresetSpeke20Audio" JSON..= presetSpeke20Audio,
         "PresetSpeke20Video" JSON..= presetSpeke20Video]
instance Property "PresetSpeke20Audio" EncryptionContractConfigurationProperty where
  type PropertyType "PresetSpeke20Audio" EncryptionContractConfigurationProperty = Value Prelude.Text
  set newValue EncryptionContractConfigurationProperty {..}
    = EncryptionContractConfigurationProperty
        {presetSpeke20Audio = newValue, ..}
instance Property "PresetSpeke20Video" EncryptionContractConfigurationProperty where
  type PropertyType "PresetSpeke20Video" EncryptionContractConfigurationProperty = Value Prelude.Text
  set newValue EncryptionContractConfigurationProperty {..}
    = EncryptionContractConfigurationProperty
        {presetSpeke20Video = newValue, ..}