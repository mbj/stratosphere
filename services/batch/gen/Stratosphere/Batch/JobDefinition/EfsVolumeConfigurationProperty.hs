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
  = EfsVolumeConfigurationProperty {authorizationConfig :: (Prelude.Maybe AuthorizationConfigProperty),
                                    fileSystemId :: (Value Prelude.Text),
                                    rootDirectory :: (Prelude.Maybe (Value Prelude.Text)),
                                    transitEncryption :: (Prelude.Maybe (Value Prelude.Text)),
                                    transitEncryptionPort :: (Prelude.Maybe (Value Prelude.Integer))}
mkEfsVolumeConfigurationProperty ::
  Value Prelude.Text -> EfsVolumeConfigurationProperty
mkEfsVolumeConfigurationProperty fileSystemId
  = EfsVolumeConfigurationProperty
      {fileSystemId = fileSystemId,
       authorizationConfig = Prelude.Nothing,
       rootDirectory = Prelude.Nothing,
       transitEncryption = Prelude.Nothing,
       transitEncryptionPort = Prelude.Nothing}
instance ToResourceProperties EfsVolumeConfigurationProperty where
  toResourceProperties EfsVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EfsVolumeConfiguration",
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