{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionLinuxParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSTaskDefinitionKernelCapabilities
import Stratosphere.ResourceProperties.ECSTaskDefinitionDevice

-- | Full data type definition for ECSTaskDefinitionLinuxParameters. See
-- 'ecsTaskDefinitionLinuxParameters' for a more convenient constructor.
data ECSTaskDefinitionLinuxParameters =
  ECSTaskDefinitionLinuxParameters
  { _eCSTaskDefinitionLinuxParametersCapabilities :: Maybe ECSTaskDefinitionKernelCapabilities
  , _eCSTaskDefinitionLinuxParametersDevices :: Maybe [ECSTaskDefinitionDevice]
  , _eCSTaskDefinitionLinuxParametersInitProcessEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionLinuxParameters where
  toJSON ECSTaskDefinitionLinuxParameters{..} =
    object $
    catMaybes
    [ fmap (("Capabilities",) . toJSON) _eCSTaskDefinitionLinuxParametersCapabilities
    , fmap (("Devices",) . toJSON) _eCSTaskDefinitionLinuxParametersDevices
    , fmap (("InitProcessEnabled",) . toJSON . fmap Bool') _eCSTaskDefinitionLinuxParametersInitProcessEnabled
    ]

instance FromJSON ECSTaskDefinitionLinuxParameters where
  parseJSON (Object obj) =
    ECSTaskDefinitionLinuxParameters <$>
      (obj .:? "Capabilities") <*>
      (obj .:? "Devices") <*>
      fmap (fmap (fmap unBool')) (obj .:? "InitProcessEnabled")
  parseJSON _ = mempty

-- | Constructor for 'ECSTaskDefinitionLinuxParameters' containing required
-- fields as arguments.
ecsTaskDefinitionLinuxParameters
  :: ECSTaskDefinitionLinuxParameters
ecsTaskDefinitionLinuxParameters  =
  ECSTaskDefinitionLinuxParameters
  { _eCSTaskDefinitionLinuxParametersCapabilities = Nothing
  , _eCSTaskDefinitionLinuxParametersDevices = Nothing
  , _eCSTaskDefinitionLinuxParametersInitProcessEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-capabilities
ecstdlpCapabilities :: Lens' ECSTaskDefinitionLinuxParameters (Maybe ECSTaskDefinitionKernelCapabilities)
ecstdlpCapabilities = lens _eCSTaskDefinitionLinuxParametersCapabilities (\s a -> s { _eCSTaskDefinitionLinuxParametersCapabilities = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-devices
ecstdlpDevices :: Lens' ECSTaskDefinitionLinuxParameters (Maybe [ECSTaskDefinitionDevice])
ecstdlpDevices = lens _eCSTaskDefinitionLinuxParametersDevices (\s a -> s { _eCSTaskDefinitionLinuxParametersDevices = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-initprocessenabled
ecstdlpInitProcessEnabled :: Lens' ECSTaskDefinitionLinuxParameters (Maybe (Val Bool))
ecstdlpInitProcessEnabled = lens _eCSTaskDefinitionLinuxParametersInitProcessEnabled (\s a -> s { _eCSTaskDefinitionLinuxParametersInitProcessEnabled = a })
