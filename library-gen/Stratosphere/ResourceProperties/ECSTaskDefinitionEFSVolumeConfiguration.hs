{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionEFSVolumeConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSTaskDefinitionAuthorizationConfig

-- | Full data type definition for ECSTaskDefinitionEFSVolumeConfiguration.
-- See 'ecsTaskDefinitionEFSVolumeConfiguration' for a more convenient
-- constructor.
data ECSTaskDefinitionEFSVolumeConfiguration =
  ECSTaskDefinitionEFSVolumeConfiguration
  { _eCSTaskDefinitionEFSVolumeConfigurationAuthorizationConfig :: Maybe ECSTaskDefinitionAuthorizationConfig
  , _eCSTaskDefinitionEFSVolumeConfigurationFilesystemId :: Val Text
  , _eCSTaskDefinitionEFSVolumeConfigurationRootDirectory :: Maybe (Val Text)
  , _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryption :: Maybe (Val Text)
  , _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryptionPort :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionEFSVolumeConfiguration where
  toJSON ECSTaskDefinitionEFSVolumeConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AuthorizationConfig",) . toJSON) _eCSTaskDefinitionEFSVolumeConfigurationAuthorizationConfig
    , (Just . ("FilesystemId",) . toJSON) _eCSTaskDefinitionEFSVolumeConfigurationFilesystemId
    , fmap (("RootDirectory",) . toJSON) _eCSTaskDefinitionEFSVolumeConfigurationRootDirectory
    , fmap (("TransitEncryption",) . toJSON) _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryption
    , fmap (("TransitEncryptionPort",) . toJSON) _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryptionPort
    ]

-- | Constructor for 'ECSTaskDefinitionEFSVolumeConfiguration' containing
-- required fields as arguments.
ecsTaskDefinitionEFSVolumeConfiguration
  :: Val Text -- ^ 'ecstdefsvcFilesystemId'
  -> ECSTaskDefinitionEFSVolumeConfiguration
ecsTaskDefinitionEFSVolumeConfiguration filesystemIdarg =
  ECSTaskDefinitionEFSVolumeConfiguration
  { _eCSTaskDefinitionEFSVolumeConfigurationAuthorizationConfig = Nothing
  , _eCSTaskDefinitionEFSVolumeConfigurationFilesystemId = filesystemIdarg
  , _eCSTaskDefinitionEFSVolumeConfigurationRootDirectory = Nothing
  , _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryption = Nothing
  , _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryptionPort = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-authorizationconfig
ecstdefsvcAuthorizationConfig :: Lens' ECSTaskDefinitionEFSVolumeConfiguration (Maybe ECSTaskDefinitionAuthorizationConfig)
ecstdefsvcAuthorizationConfig = lens _eCSTaskDefinitionEFSVolumeConfigurationAuthorizationConfig (\s a -> s { _eCSTaskDefinitionEFSVolumeConfigurationAuthorizationConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-filesystemid
ecstdefsvcFilesystemId :: Lens' ECSTaskDefinitionEFSVolumeConfiguration (Val Text)
ecstdefsvcFilesystemId = lens _eCSTaskDefinitionEFSVolumeConfigurationFilesystemId (\s a -> s { _eCSTaskDefinitionEFSVolumeConfigurationFilesystemId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-rootdirectory
ecstdefsvcRootDirectory :: Lens' ECSTaskDefinitionEFSVolumeConfiguration (Maybe (Val Text))
ecstdefsvcRootDirectory = lens _eCSTaskDefinitionEFSVolumeConfigurationRootDirectory (\s a -> s { _eCSTaskDefinitionEFSVolumeConfigurationRootDirectory = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-transitencryption
ecstdefsvcTransitEncryption :: Lens' ECSTaskDefinitionEFSVolumeConfiguration (Maybe (Val Text))
ecstdefsvcTransitEncryption = lens _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryption (\s a -> s { _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryption = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-efsvolumeconfiguration.html#cfn-ecs-taskdefinition-efsvolumeconfiguration-transitencryptionport
ecstdefsvcTransitEncryptionPort :: Lens' ECSTaskDefinitionEFSVolumeConfiguration (Maybe (Val Integer))
ecstdefsvcTransitEncryptionPort = lens _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryptionPort (\s a -> s { _eCSTaskDefinitionEFSVolumeConfigurationTransitEncryptionPort = a })
