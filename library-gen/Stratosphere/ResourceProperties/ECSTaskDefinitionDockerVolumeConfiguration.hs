{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionDockerVolumeConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionDockerVolumeConfiguration.
-- See 'ecsTaskDefinitionDockerVolumeConfiguration' for a more convenient
-- constructor.
data ECSTaskDefinitionDockerVolumeConfiguration =
  ECSTaskDefinitionDockerVolumeConfiguration
  { _eCSTaskDefinitionDockerVolumeConfigurationAutoprovision :: Maybe (Val Bool)
  , _eCSTaskDefinitionDockerVolumeConfigurationDriver :: Maybe (Val Text)
  , _eCSTaskDefinitionDockerVolumeConfigurationDriverOpts :: Maybe Object
  , _eCSTaskDefinitionDockerVolumeConfigurationLabels :: Maybe Object
  , _eCSTaskDefinitionDockerVolumeConfigurationScope :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionDockerVolumeConfiguration where
  toJSON ECSTaskDefinitionDockerVolumeConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Autoprovision",) . toJSON . fmap Bool') _eCSTaskDefinitionDockerVolumeConfigurationAutoprovision
    , fmap (("Driver",) . toJSON) _eCSTaskDefinitionDockerVolumeConfigurationDriver
    , fmap (("DriverOpts",) . toJSON) _eCSTaskDefinitionDockerVolumeConfigurationDriverOpts
    , fmap (("Labels",) . toJSON) _eCSTaskDefinitionDockerVolumeConfigurationLabels
    , fmap (("Scope",) . toJSON) _eCSTaskDefinitionDockerVolumeConfigurationScope
    ]

instance FromJSON ECSTaskDefinitionDockerVolumeConfiguration where
  parseJSON (Object obj) =
    ECSTaskDefinitionDockerVolumeConfiguration <$>
      fmap (fmap (fmap unBool')) (obj .:? "Autoprovision") <*>
      (obj .:? "Driver") <*>
      (obj .:? "DriverOpts") <*>
      (obj .:? "Labels") <*>
      (obj .:? "Scope")
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionDockerVolumeConfiguration' containing
-- required fields as arguments.
ecsTaskDefinitionDockerVolumeConfiguration
  :: ECSTaskDefinitionDockerVolumeConfiguration
ecsTaskDefinitionDockerVolumeConfiguration  =
  ECSTaskDefinitionDockerVolumeConfiguration
  { _eCSTaskDefinitionDockerVolumeConfigurationAutoprovision = Nothing
  , _eCSTaskDefinitionDockerVolumeConfigurationDriver = Nothing
  , _eCSTaskDefinitionDockerVolumeConfigurationDriverOpts = Nothing
  , _eCSTaskDefinitionDockerVolumeConfigurationLabels = Nothing
  , _eCSTaskDefinitionDockerVolumeConfigurationScope = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-autoprovision
ecstddvcAutoprovision :: Lens' ECSTaskDefinitionDockerVolumeConfiguration (Maybe (Val Bool))
ecstddvcAutoprovision = lens _eCSTaskDefinitionDockerVolumeConfigurationAutoprovision (\s a -> s { _eCSTaskDefinitionDockerVolumeConfigurationAutoprovision = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-driver
ecstddvcDriver :: Lens' ECSTaskDefinitionDockerVolumeConfiguration (Maybe (Val Text))
ecstddvcDriver = lens _eCSTaskDefinitionDockerVolumeConfigurationDriver (\s a -> s { _eCSTaskDefinitionDockerVolumeConfigurationDriver = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-driveropts
ecstddvcDriverOpts :: Lens' ECSTaskDefinitionDockerVolumeConfiguration (Maybe Object)
ecstddvcDriverOpts = lens _eCSTaskDefinitionDockerVolumeConfigurationDriverOpts (\s a -> s { _eCSTaskDefinitionDockerVolumeConfigurationDriverOpts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-labels
ecstddvcLabels :: Lens' ECSTaskDefinitionDockerVolumeConfiguration (Maybe Object)
ecstddvcLabels = lens _eCSTaskDefinitionDockerVolumeConfigurationLabels (\s a -> s { _eCSTaskDefinitionDockerVolumeConfigurationLabels = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-dockervolumeconfiguration.html#cfn-ecs-taskdefinition-dockervolumeconfiguration-scope
ecstddvcScope :: Lens' ECSTaskDefinitionDockerVolumeConfiguration (Maybe (Val Text))
ecstddvcScope = lens _eCSTaskDefinitionDockerVolumeConfigurationScope (\s a -> s { _eCSTaskDefinitionDockerVolumeConfigurationScope = a })
