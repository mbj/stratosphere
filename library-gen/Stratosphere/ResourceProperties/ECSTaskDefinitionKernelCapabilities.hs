{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionKernelCapabilities where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionKernelCapabilities. See
-- 'ecsTaskDefinitionKernelCapabilities' for a more convenient constructor.
data ECSTaskDefinitionKernelCapabilities =
  ECSTaskDefinitionKernelCapabilities
  { _eCSTaskDefinitionKernelCapabilitiesAdd :: Maybe (ValList Text)
  , _eCSTaskDefinitionKernelCapabilitiesDrop :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionKernelCapabilities where
  toJSON ECSTaskDefinitionKernelCapabilities{..} =
    object $
    catMaybes
    [ fmap (("Add",) . toJSON) _eCSTaskDefinitionKernelCapabilitiesAdd
    , fmap (("Drop",) . toJSON) _eCSTaskDefinitionKernelCapabilitiesDrop
    ]

-- | Constructor for 'ECSTaskDefinitionKernelCapabilities' containing required
-- fields as arguments.
ecsTaskDefinitionKernelCapabilities
  :: ECSTaskDefinitionKernelCapabilities
ecsTaskDefinitionKernelCapabilities  =
  ECSTaskDefinitionKernelCapabilities
  { _eCSTaskDefinitionKernelCapabilitiesAdd = Nothing
  , _eCSTaskDefinitionKernelCapabilitiesDrop = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-add
ecstdkcAdd :: Lens' ECSTaskDefinitionKernelCapabilities (Maybe (ValList Text))
ecstdkcAdd = lens _eCSTaskDefinitionKernelCapabilitiesAdd (\s a -> s { _eCSTaskDefinitionKernelCapabilitiesAdd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-kernelcapabilities.html#cfn-ecs-taskdefinition-kernelcapabilities-drop
ecstdkcDrop :: Lens' ECSTaskDefinitionKernelCapabilities (Maybe (ValList Text))
ecstdkcDrop = lens _eCSTaskDefinitionKernelCapabilitiesDrop (\s a -> s { _eCSTaskDefinitionKernelCapabilitiesDrop = a })
