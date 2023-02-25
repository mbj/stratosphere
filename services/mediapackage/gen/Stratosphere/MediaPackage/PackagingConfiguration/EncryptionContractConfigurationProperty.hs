module Stratosphere.MediaPackage.PackagingConfiguration.EncryptionContractConfigurationProperty (
        EncryptionContractConfigurationProperty(..),
        mkEncryptionContractConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EncryptionContractConfigurationProperty
  = EncryptionContractConfigurationProperty {presetSpeke20Audio :: (Value Prelude.Text),
                                             presetSpeke20Video :: (Value Prelude.Text)}
mkEncryptionContractConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> EncryptionContractConfigurationProperty
mkEncryptionContractConfigurationProperty
  presetSpeke20Audio
  presetSpeke20Video
  = EncryptionContractConfigurationProperty
      {presetSpeke20Audio = presetSpeke20Audio,
       presetSpeke20Video = presetSpeke20Video}
instance ToResourceProperties EncryptionContractConfigurationProperty where
  toResourceProperties EncryptionContractConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.EncryptionContractConfiguration",
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