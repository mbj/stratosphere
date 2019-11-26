{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionLinuxParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSTaskDefinitionKernelCapabilities
import Stratosphere.ResourceProperties.ECSTaskDefinitionDevice
import Stratosphere.ResourceProperties.ECSTaskDefinitionTmpfs

-- | Full data type definition for ECSTaskDefinitionLinuxParameters. See
-- 'ecsTaskDefinitionLinuxParameters' for a more convenient constructor.
data ECSTaskDefinitionLinuxParameters =
  ECSTaskDefinitionLinuxParameters
  { _eCSTaskDefinitionLinuxParametersCapabilities :: Maybe ECSTaskDefinitionKernelCapabilities
  , _eCSTaskDefinitionLinuxParametersDevices :: Maybe [ECSTaskDefinitionDevice]
  , _eCSTaskDefinitionLinuxParametersInitProcessEnabled :: Maybe (Val Bool)
  , _eCSTaskDefinitionLinuxParametersMaxSwap :: Maybe (Val Integer)
  , _eCSTaskDefinitionLinuxParametersSharedMemorySize :: Maybe (Val Integer)
  , _eCSTaskDefinitionLinuxParametersSwappiness :: Maybe (Val Integer)
  , _eCSTaskDefinitionLinuxParametersTmpfs :: Maybe [ECSTaskDefinitionTmpfs]
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionLinuxParameters where
  toJSON ECSTaskDefinitionLinuxParameters{..} =
    object $
    catMaybes
    [ fmap (("Capabilities",) . toJSON) _eCSTaskDefinitionLinuxParametersCapabilities
    , fmap (("Devices",) . toJSON) _eCSTaskDefinitionLinuxParametersDevices
    , fmap (("InitProcessEnabled",) . toJSON) _eCSTaskDefinitionLinuxParametersInitProcessEnabled
    , fmap (("MaxSwap",) . toJSON) _eCSTaskDefinitionLinuxParametersMaxSwap
    , fmap (("SharedMemorySize",) . toJSON) _eCSTaskDefinitionLinuxParametersSharedMemorySize
    , fmap (("Swappiness",) . toJSON) _eCSTaskDefinitionLinuxParametersSwappiness
    , fmap (("Tmpfs",) . toJSON) _eCSTaskDefinitionLinuxParametersTmpfs
    ]

-- | Constructor for 'ECSTaskDefinitionLinuxParameters' containing required
-- fields as arguments.
ecsTaskDefinitionLinuxParameters
  :: ECSTaskDefinitionLinuxParameters
ecsTaskDefinitionLinuxParameters  =
  ECSTaskDefinitionLinuxParameters
  { _eCSTaskDefinitionLinuxParametersCapabilities = Nothing
  , _eCSTaskDefinitionLinuxParametersDevices = Nothing
  , _eCSTaskDefinitionLinuxParametersInitProcessEnabled = Nothing
  , _eCSTaskDefinitionLinuxParametersMaxSwap = Nothing
  , _eCSTaskDefinitionLinuxParametersSharedMemorySize = Nothing
  , _eCSTaskDefinitionLinuxParametersSwappiness = Nothing
  , _eCSTaskDefinitionLinuxParametersTmpfs = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-maxswap
ecstdlpMaxSwap :: Lens' ECSTaskDefinitionLinuxParameters (Maybe (Val Integer))
ecstdlpMaxSwap = lens _eCSTaskDefinitionLinuxParametersMaxSwap (\s a -> s { _eCSTaskDefinitionLinuxParametersMaxSwap = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-sharedmemorysize
ecstdlpSharedMemorySize :: Lens' ECSTaskDefinitionLinuxParameters (Maybe (Val Integer))
ecstdlpSharedMemorySize = lens _eCSTaskDefinitionLinuxParametersSharedMemorySize (\s a -> s { _eCSTaskDefinitionLinuxParametersSharedMemorySize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-swappiness
ecstdlpSwappiness :: Lens' ECSTaskDefinitionLinuxParameters (Maybe (Val Integer))
ecstdlpSwappiness = lens _eCSTaskDefinitionLinuxParametersSwappiness (\s a -> s { _eCSTaskDefinitionLinuxParametersSwappiness = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-tmpfs
ecstdlpTmpfs :: Lens' ECSTaskDefinitionLinuxParameters (Maybe [ECSTaskDefinitionTmpfs])
ecstdlpTmpfs = lens _eCSTaskDefinitionLinuxParametersTmpfs (\s a -> s { _eCSTaskDefinitionLinuxParametersTmpfs = a })
