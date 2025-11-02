module Stratosphere.MediaPackageV2.OriginEndpoint.SpekeKeyProviderProperty (
        module Exports, SpekeKeyProviderProperty(..),
        mkSpekeKeyProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaPackageV2.OriginEndpoint.EncryptionContractConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpekeKeyProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-spekekeyprovider.html>
    SpekeKeyProviderProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-spekekeyprovider.html#cfn-mediapackagev2-originendpoint-spekekeyprovider-drmsystems>
                              drmSystems :: (ValueList Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-spekekeyprovider.html#cfn-mediapackagev2-originendpoint-spekekeyprovider-encryptioncontractconfiguration>
                              encryptionContractConfiguration :: EncryptionContractConfigurationProperty,
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-spekekeyprovider.html#cfn-mediapackagev2-originendpoint-spekekeyprovider-resourceid>
                              resourceId :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-spekekeyprovider.html#cfn-mediapackagev2-originendpoint-spekekeyprovider-rolearn>
                              roleArn :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediapackagev2-originendpoint-spekekeyprovider.html#cfn-mediapackagev2-originendpoint-spekekeyprovider-url>
                              url :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpekeKeyProviderProperty ::
  ValueList Prelude.Text
  -> EncryptionContractConfigurationProperty
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> SpekeKeyProviderProperty
mkSpekeKeyProviderProperty
  drmSystems
  encryptionContractConfiguration
  resourceId
  roleArn
  url
  = SpekeKeyProviderProperty
      {haddock_workaround_ = (), drmSystems = drmSystems,
       encryptionContractConfiguration = encryptionContractConfiguration,
       resourceId = resourceId, roleArn = roleArn, url = url}
instance ToResourceProperties SpekeKeyProviderProperty where
  toResourceProperties SpekeKeyProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaPackageV2::OriginEndpoint.SpekeKeyProvider",
         supportsTags = Prelude.False,
         properties = ["DrmSystems" JSON..= drmSystems,
                       "EncryptionContractConfiguration"
                         JSON..= encryptionContractConfiguration,
                       "ResourceId" JSON..= resourceId, "RoleArn" JSON..= roleArn,
                       "Url" JSON..= url]}
instance JSON.ToJSON SpekeKeyProviderProperty where
  toJSON SpekeKeyProviderProperty {..}
    = JSON.object
        ["DrmSystems" JSON..= drmSystems,
         "EncryptionContractConfiguration"
           JSON..= encryptionContractConfiguration,
         "ResourceId" JSON..= resourceId, "RoleArn" JSON..= roleArn,
         "Url" JSON..= url]
instance Property "DrmSystems" SpekeKeyProviderProperty where
  type PropertyType "DrmSystems" SpekeKeyProviderProperty = ValueList Prelude.Text
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty {drmSystems = newValue, ..}
instance Property "EncryptionContractConfiguration" SpekeKeyProviderProperty where
  type PropertyType "EncryptionContractConfiguration" SpekeKeyProviderProperty = EncryptionContractConfigurationProperty
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty
        {encryptionContractConfiguration = newValue, ..}
instance Property "ResourceId" SpekeKeyProviderProperty where
  type PropertyType "ResourceId" SpekeKeyProviderProperty = Value Prelude.Text
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty {resourceId = newValue, ..}
instance Property "RoleArn" SpekeKeyProviderProperty where
  type PropertyType "RoleArn" SpekeKeyProviderProperty = Value Prelude.Text
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty {roleArn = newValue, ..}
instance Property "Url" SpekeKeyProviderProperty where
  type PropertyType "Url" SpekeKeyProviderProperty = Value Prelude.Text
  set newValue SpekeKeyProviderProperty {..}
    = SpekeKeyProviderProperty {url = newValue, ..}