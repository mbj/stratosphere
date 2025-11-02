module Stratosphere.ECS.TaskDefinition.EFSVolumeConfigurationProperty (
        module Exports, EFSVolumeConfigurationProperty(..),
        mkEFSVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.AuthorizationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EFSVolumeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html>
    EFSVolumeConfigurationProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-authorizationconfig>
                                    authorizationConfig :: (Prelude.Maybe AuthorizationConfigProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-filesystemid>
                                    filesystemId :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-rootdirectory>
                                    rootDirectory :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-transitencryption>
                                    transitEncryption :: (Prelude.Maybe (Value Prelude.Text)),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-transitencryptionport>
                                    transitEncryptionPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEFSVolumeConfigurationProperty ::
  Value Prelude.Text -> EFSVolumeConfigurationProperty
mkEFSVolumeConfigurationProperty filesystemId
  = EFSVolumeConfigurationProperty
      {haddock_workaround_ = (), filesystemId = filesystemId,
       authorizationConfig = Prelude.Nothing,
       rootDirectory = Prelude.Nothing,
       transitEncryption = Prelude.Nothing,
       transitEncryptionPort = Prelude.Nothing}
instance ToResourceProperties EFSVolumeConfigurationProperty where
  toResourceProperties EFSVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.EFSVolumeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FilesystemId" JSON..= filesystemId]
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
              ["FilesystemId" JSON..= filesystemId]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizationConfig" Prelude.<$> authorizationConfig,
                  (JSON..=) "RootDirectory" Prelude.<$> rootDirectory,
                  (JSON..=) "TransitEncryption" Prelude.<$> transitEncryption,
                  (JSON..=) "TransitEncryptionPort"
                    Prelude.<$> transitEncryptionPort])))
instance Property "AuthorizationConfig" EFSVolumeConfigurationProperty where
  type PropertyType "AuthorizationConfig" EFSVolumeConfigurationProperty = AuthorizationConfigProperty
  set newValue EFSVolumeConfigurationProperty {..}
    = EFSVolumeConfigurationProperty
        {authorizationConfig = Prelude.pure newValue, ..}
instance Property "FilesystemId" EFSVolumeConfigurationProperty where
  type PropertyType "FilesystemId" EFSVolumeConfigurationProperty = Value Prelude.Text
  set newValue EFSVolumeConfigurationProperty {..}
    = EFSVolumeConfigurationProperty {filesystemId = newValue, ..}
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