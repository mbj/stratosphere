{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionVolume where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSTaskDefinitionDockerVolumeConfiguration
import Stratosphere.ResourceProperties.ECSTaskDefinitionHostVolumeProperties

-- | Full data type definition for ECSTaskDefinitionVolume. See
-- 'ecsTaskDefinitionVolume' for a more convenient constructor.
data ECSTaskDefinitionVolume =
  ECSTaskDefinitionVolume
  { _eCSTaskDefinitionVolumeDockerVolumeConfiguration :: Maybe ECSTaskDefinitionDockerVolumeConfiguration
  , _eCSTaskDefinitionVolumeHost :: Maybe ECSTaskDefinitionHostVolumeProperties
  , _eCSTaskDefinitionVolumeName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionVolume where
  toJSON ECSTaskDefinitionVolume{..} =
    object $
    catMaybes
    [ fmap (("DockerVolumeConfiguration",) . toJSON) _eCSTaskDefinitionVolumeDockerVolumeConfiguration
    , fmap (("Host",) . toJSON) _eCSTaskDefinitionVolumeHost
    , fmap (("Name",) . toJSON) _eCSTaskDefinitionVolumeName
    ]

instance FromJSON ECSTaskDefinitionVolume where
  parseJSON (Object obj) =
    ECSTaskDefinitionVolume <$>
      (obj .:? "DockerVolumeConfiguration") <*>
      (obj .:? "Host") <*>
      (obj .:? "Name")
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionVolume' containing required fields as
-- arguments.
ecsTaskDefinitionVolume
  :: ECSTaskDefinitionVolume
ecsTaskDefinitionVolume  =
  ECSTaskDefinitionVolume
  { _eCSTaskDefinitionVolumeDockerVolumeConfiguration = Nothing
  , _eCSTaskDefinitionVolumeHost = Nothing
  , _eCSTaskDefinitionVolumeName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html#cfn-ecs-taskdefinition-volume-dockervolumeconfiguration
ecstdvDockerVolumeConfiguration :: Lens' ECSTaskDefinitionVolume (Maybe ECSTaskDefinitionDockerVolumeConfiguration)
ecstdvDockerVolumeConfiguration = lens _eCSTaskDefinitionVolumeDockerVolumeConfiguration (\s a -> s { _eCSTaskDefinitionVolumeDockerVolumeConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html#cfn-ecs-taskdefinition-volumes-host
ecstdvHost :: Lens' ECSTaskDefinitionVolume (Maybe ECSTaskDefinitionHostVolumeProperties)
ecstdvHost = lens _eCSTaskDefinitionVolumeHost (\s a -> s { _eCSTaskDefinitionVolumeHost = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-volumes.html#cfn-ecs-taskdefinition-volumes-name
ecstdvName :: Lens' ECSTaskDefinitionVolume (Maybe (Val Text))
ecstdvName = lens _eCSTaskDefinitionVolumeName (\s a -> s { _eCSTaskDefinitionVolumeName = a })
