module Stratosphere.Batch.JobDefinition.EFSVolumeConfigurationProperty (
        module Exports, EFSVolumeConfigurationProperty(..),
        mkEFSVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EFSAuthorizationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EFSVolumeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html>
    EFSVolumeConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-authorizationconfig>
                                    authorizationConfig :: (Prelude.Maybe EFSAuthorizationConfigProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-filesystemid>
                                    fileSystemId :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-rootdirectory>
                                    rootDirectory :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-transitencryption>
                                    transitEncryption :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-transitencryptionport>
                                    transitEncryptionPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEFSVolumeConfigurationProperty ::
  Value Prelude.Text -> EFSVolumeConfigurationProperty
mkEFSVolumeConfigurationProperty fileSystemId
  = EFSVolumeConfigurationProperty
      {haddock_workaround_ = (), fileSystemId = fileSystemId,
       authorizationConfig = Prelude.Nothing,
       rootDirectory = Prelude.Nothing,
       transitEncryption = Prelude.Nothing,
       transitEncryptionPort = Prelude.Nothing}
instance ToResourceProperties EFSVolumeConfigurationProperty where
  toResourceProperties EFSVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EFSVolumeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileSystemId" JSON..= fileSystemId]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthorizationConfig" Prelude.<$> authorizationConfig,
                               (JSON..=) "RootDirectory" Prelude.<$> rootDirectory,
                               (JSON..=) "TransitEncryption" Prelude.<$> transitEncryption,
                               (JSON..=) "TransitEncryptionPort"
                                 Prelude.<$> transitEncryptionPort]))}
instance JSON.ToJSON EFSVolumeConfigurationProperty where
  toJSON EFSVolumeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileSystemId" JSON..= fileSystemId]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizationConfig" Prelude.<$> authorizationConfig,
                  (JSON..=) "RootDirectory" Prelude.<$> rootDirectory,
                  (JSON..=) "TransitEncryption" Prelude.<$> transitEncryption,
                  (JSON..=) "TransitEncryptionPort"
                    Prelude.<$> transitEncryptionPort])))
instance Property "AuthorizationConfig" EFSVolumeConfigurationProperty where
  type PropertyType "AuthorizationConfig" EFSVolumeConfigurationProperty = EFSAuthorizationConfigProperty
  set newValue EFSVolumeConfigurationProperty {..}
    = EFSVolumeConfigurationProperty
        {authorizationConfig = Prelude.pure newValue, ..}
instance Property "FileSystemId" EFSVolumeConfigurationProperty where
  type PropertyType "FileSystemId" EFSVolumeConfigurationProperty = Value Prelude.Text
  set newValue EFSVolumeConfigurationProperty {..}
    = EFSVolumeConfigurationProperty {fileSystemId = newValue, ..}
instance Property "RootDirectory" EFSVolumeConfigurationProperty where
  type PropertyType "RootDirectory" EFSVolumeConfigurationProperty = Value Prelude.Text
  set newValue EFSVolumeConfigurationProperty {..}
    = EFSVolumeConfigurationProperty
        {rootDirectory = Prelude.pure newValue, ..}
instance Property "TransitEncryption" EFSVolumeConfigurationProperty where
  type PropertyType "TransitEncryption" EFSVolumeConfigurationProperty = Value Prelude.Text
  set newValue EFSVolumeConfigurationProperty {..}
    = EFSVolumeConfigurationProperty
        {transitEncryption = Prelude.pure newValue, ..}
instance Property "TransitEncryptionPort" EFSVolumeConfigurationProperty where
  type PropertyType "TransitEncryptionPort" EFSVolumeConfigurationProperty = Value Prelude.Integer
  set newValue EFSVolumeConfigurationProperty {..}
    = EFSVolumeConfigurationProperty
        {transitEncryptionPort = Prelude.pure newValue, ..}