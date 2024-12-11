module Stratosphere.ECS.TaskDefinition.FSxWindowsFileServerVolumeConfigurationProperty (
        module Exports,
        FSxWindowsFileServerVolumeConfigurationProperty(..),
        mkFSxWindowsFileServerVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.FSxAuthorizationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FSxWindowsFileServerVolumeConfigurationProperty
  = FSxWindowsFileServerVolumeConfigurationProperty {authorizationConfig :: (Prelude.Maybe FSxAuthorizationConfigProperty),
                                                     fileSystemId :: (Value Prelude.Text),
                                                     rootDirectory :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFSxWindowsFileServerVolumeConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> FSxWindowsFileServerVolumeConfigurationProperty
mkFSxWindowsFileServerVolumeConfigurationProperty
  fileSystemId
  rootDirectory
  = FSxWindowsFileServerVolumeConfigurationProperty
      {fileSystemId = fileSystemId, rootDirectory = rootDirectory,
       authorizationConfig = Prelude.Nothing}
instance ToResourceProperties FSxWindowsFileServerVolumeConfigurationProperty where
  toResourceProperties
    FSxWindowsFileServerVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.FSxWindowsFileServerVolumeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FileSystemId" JSON..= fileSystemId,
                            "RootDirectory" JSON..= rootDirectory]
                           (Prelude.catMaybes
                              [(JSON..=) "AuthorizationConfig"
                                 Prelude.<$> authorizationConfig]))}
instance JSON.ToJSON FSxWindowsFileServerVolumeConfigurationProperty where
  toJSON FSxWindowsFileServerVolumeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FileSystemId" JSON..= fileSystemId,
               "RootDirectory" JSON..= rootDirectory]
              (Prelude.catMaybes
                 [(JSON..=) "AuthorizationConfig"
                    Prelude.<$> authorizationConfig])))
instance Property "AuthorizationConfig" FSxWindowsFileServerVolumeConfigurationProperty where
  type PropertyType "AuthorizationConfig" FSxWindowsFileServerVolumeConfigurationProperty = FSxAuthorizationConfigProperty
  set newValue FSxWindowsFileServerVolumeConfigurationProperty {..}
    = FSxWindowsFileServerVolumeConfigurationProperty
        {authorizationConfig = Prelude.pure newValue, ..}
instance Property "FileSystemId" FSxWindowsFileServerVolumeConfigurationProperty where
  type PropertyType "FileSystemId" FSxWindowsFileServerVolumeConfigurationProperty = Value Prelude.Text
  set newValue FSxWindowsFileServerVolumeConfigurationProperty {..}
    = FSxWindowsFileServerVolumeConfigurationProperty
        {fileSystemId = newValue, ..}
instance Property "RootDirectory" FSxWindowsFileServerVolumeConfigurationProperty where
  type PropertyType "RootDirectory" FSxWindowsFileServerVolumeConfigurationProperty = Value Prelude.Text
  set newValue FSxWindowsFileServerVolumeConfigurationProperty {..}
    = FSxWindowsFileServerVolumeConfigurationProperty
        {rootDirectory = newValue, ..}