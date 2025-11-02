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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-spekekeyprovider.html>
    SpekeKeyProviderProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-spekekeyprovider.html#cfn-mediapackage-packagingconfiguration-spekekeyprovider-encryptioncontractconfiguration>
                              encryptionContractConfiguration :: (Prelude.Maybe EncryptionContractConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-spekekeyprovider.html#cfn-mediapackage-packagingconfiguration-spekekeyprovider-rolearn>
                              roleArn :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-spekekeyprovider.html#cfn-mediapackage-packagingconfiguration-spekekeyprovider-systemids>
                              systemIds :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackage-packagingconfiguration-spekekeyprovider.html#cfn-mediapackage-packagingconfiguration-spekekeyprovider-url>
                              url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpekeKeyProviderProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Text -> SpekeKeyProviderProperty
mkSpekeKeyProviderProperty roleArn systemIds url
  = SpekeKeyProviderProperty
      {haddock_workaround_ = (), roleArn = roleArn,
       systemIds = systemIds, url = url,
       encryptionContractConfiguration = Prelude.Nothing}
instance ToResourceProperties SpekeKeyProviderProperty where
  toResourceProperties SpekeKeyProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackage::PackagingConfiguration.SpekeKeyProvider",
         supportsTags = Prelude.False,
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