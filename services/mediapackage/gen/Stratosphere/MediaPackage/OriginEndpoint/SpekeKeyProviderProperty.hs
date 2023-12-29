module Stratosphere.MediaPackage.OriginEndpoint.SpekeKeyProviderProperty (
        module Exports, SpekeKeyProviderProperty(..),
        mkSpekeKeyProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackage.OriginEndpoint.EncryptionContractConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpekeKeyProviderProperty
  = SpekeKeyProviderProperty {certificateArn :: (Prelude.Maybe (Value Prelude.Text)),
                              encryptionContractConfiguration :: (Prelude.Maybe EncryptionContractConfigurationProperty),
                              resourceId :: (Value Prelude.Text),
                              roleArn :: (Value Prelude.Text),
                              systemIds :: (ValueList Prelude.Text),
                              url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpekeKeyProviderProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> ValueList Prelude.Text
        -> Value Prelude.Text -> SpekeKeyProviderProperty
mkSpekeKeyProviderProperty resourceId roleArn systemIds url
  = SpekeKeyProviderProperty
      {resourceId = resourceId, roleArn = roleArn, systemIds = systemIds,
       url = url, certificateArn = Prelude.Nothing,
       encryptionContractConfiguration = Prelude.Nothing}
instance ToResourceProperties SpekeKeyProviderProperty where
  toResourceProperties SpekeKeyProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::OriginEndpoint.SpekeKeyProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourceId" JSON..= resourceId, "RoleArn" JSON..= roleArn,
                            "SystemIds" JSON..= systemIds, "Url" JSON..= url]
                           (Prelude.catMaybes
                              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                               (JSON..=) "EncryptionContractConfiguration"
                                 Prelude.<$> encryptionContractConfiguration]))}
instance JSON.ToJSON SpekeKeyProviderProperty where
  toJSON SpekeKeyProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourceId" JSON..= resourceId, "RoleArn" JSON..= roleArn,
               "SystemIds" JSON..= systemIds, "Url" JSON..= url]
              (Prelude.catMaybes
                 [(JSON..=) "CertificateArn" Prelude.<$> certificateArn,
                  (JSON..=) "EncryptionContractConfiguration"
                    Prelude.<$> encryptionContractConfiguration])))
instance Property "CertificateArn" SpekeKeyProviderProperty where
  type PropertyType "CertificateArn" SpekeKeyProviderProperty = Value Prelude.Text
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty
        {certificateArn = Prelude.pure newValue, ..}
instance Property "EncryptionContractConfiguration" SpekeKeyProviderProperty where
  type PropertyType "EncryptionContractConfiguration" SpekeKeyProviderProperty = EncryptionContractConfigurationProperty
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty
        {encryptionContractConfiguration = Prelude.pure newValue, ..}
instance Property "ResourceId" SpekeKeyProviderProperty where
  type PropertyType "ResourceId" SpekeKeyProviderProperty = Value Prelude.Text
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty {resourceId = newValue, ..}
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