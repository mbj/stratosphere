module Stratosphere.MediaPackage.PackagingConfiguration.SpekeKeyProviderProperty (
        module Exports, SpekeKeyProviderProperty(..),
        mkSpekeKeyProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.PackagingConfiguration.EncryptionContractConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpekeKeyProviderProperty
  = SpekeKeyProviderProperty {encryptionContractConfiguration :: (Prelude.Maybe EncryptionContractConfigurationProperty),
                              roleArn :: (Value Prelude.Text),
                              systemIds :: (ValueList Prelude.Text),
                              url :: (Value Prelude.Text)}
mkSpekeKeyProviderProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> SpekeKeyProviderProperty
mkSpekeKeyProviderProperty roleArn systemIds url
  = SpekeKeyProviderProperty
      {roleArn = roleArn, systemIds = systemIds, url = url,
       encryptionContractConfiguration = Prelude.Nothing}
instance ToResourceProperties SpekeKeyProviderProperty where
  toResourceProperties SpekeKeyProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.SpekeKeyProvider",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn, "SystemIds" JSON..= systemIds,
                            "Url" JSON..= url]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionContractConfiguration"
                                 Prelude.<$> encryptionContractConfiguration]))}
instance JSON.ToJSON SpekeKeyProviderProperty where
  toJSON SpekeKeyProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn, "SystemIds" JSON..= systemIds,
               "Url" JSON..= url]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionContractConfiguration"
                    Prelude.<$> encryptionContractConfiguration])))
instance Property "EncryptionContractConfiguration" SpekeKeyProviderProperty where
  type PropertyType "EncryptionContractConfiguration" SpekeKeyProviderProperty = EncryptionContractConfigurationProperty
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty
        {encryptionContractConfiguration = Prelude.pure newValue, ..}
instance Property "RoleArn" SpekeKeyProviderProperty where
  type PropertyType "RoleArn" SpekeKeyProviderProperty = Value Prelude.Text
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty {roleArn = newValue, ..}
instance Property "SystemIds" SpekeKeyProviderProperty where
  type PropertyType "SystemIds" SpekeKeyProviderProperty = ValueList Prelude.Text
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty {systemIds = newValue, ..}
instance Property "Url" SpekeKeyProviderProperty where
  type PropertyType "Url" SpekeKeyProviderProperty = Value Prelude.Text
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty {url = newValue, ..}