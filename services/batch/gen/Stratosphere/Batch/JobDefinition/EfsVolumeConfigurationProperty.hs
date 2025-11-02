module Stratosphere.Batch.JobDefinition.EfsVolumeConfigurationProperty (
        module Exports, EfsVolumeConfigurationProperty(..),
        mkEfsVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.AuthorizationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EfsVolumeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html>
    EfsVolumeConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-authorizationconfig>
                                    authorizationConfig :: (Prelude.Maybe AuthorizationConfigProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-filesystemid>
                                    fileSystemId :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-rootdirectory>
                                    rootDirectory :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-transitencryption>
                                    transitEncryption :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-efsvolumeconfiguration.html#cfn-batch-jobdefinition-efsvolumeconfiguration-transitencryptionport>
                                    transitEncryptionPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEfsVolumeConfigurationProperty ::
  Value Prelude.Text -> EfsVolumeConfigurationProperty
mkEfsVolumeConfigurationProperty fileSystemId
  = EfsVolumeConfigurationProperty
      {haddock_workaround_ = (), fileSystemId = fileSystemId,
       authorizationConfig = Prelude.Nothing,
       rootDirectory = Prelude.Nothing,
       transitEncryption = Prelude.Nothing,
       transitEncryptionPort = Prelude.Nothing}
instance ToResourceProperties EfsVolumeConfigurationProperty where
  toResourceProperties EfsVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EfsVolumeConfiguration",
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
instance JSON.ToJSON EfsVolumeConfigurationProperty where
  toJSON EfsVolumeConfigurationProperty {..}
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
instance Property "AuthorizationConfig" EfsVolumeConfigurationProperty where
  type PropertyType "AuthorizationConfig" EfsVolumeConfigurationProperty = AuthorizationConfigProperty
  set newValue EfsVolumeConfigurationProperty {..}
    = EfsVolumeConfigurationProperty
        {authorizationConfig = Prelude.pure newValue, ..}
instance Property "FileSystemId" EfsVolumeConfigurationProperty where
  type PropertyType "FileSystemId" EfsVolumeConfigurationProperty = Value Prelude.Text
  set newValue EfsVolumeConfigurationProperty {..}
    = EfsVolumeConfigurationProperty {fileSystemId = newValue, ..}
instance Property "RootDirectory" EfsVolumeConfigurationProperty where
  type PropertyType "RootDirectory" EfsVolumeConfigurationProperty = Value Prelude.Text
  set newValue EfsVolumeConfigurationProperty {..}
    = EfsVolumeConfigurationProperty
        {rootDirectory = Prelude.pure newValue, ..}
instance Property "TransitEncryption" EfsVolumeConfigurationProperty where
  type PropertyType "TransitEncryption" EfsVolumeConfigurationProperty = Value Prelude.Text
  set newValue EfsVolumeConfigurationProperty {..}
    = EfsVolumeConfigurationProperty
        {transitEncryption = Prelude.pure newValue, ..}
instance Property "TransitEncryptionPort" EfsVolumeConfigurationProperty where
  type PropertyType "TransitEncryptionPort" EfsVolumeConfigurationProperty = Value Prelude.Integer
  set newValue EfsVolumeConfigurationProperty {..}
    = EfsVolumeConfigurationProperty
        {transitEncryptionPort = Prelude.pure newValue, ..}