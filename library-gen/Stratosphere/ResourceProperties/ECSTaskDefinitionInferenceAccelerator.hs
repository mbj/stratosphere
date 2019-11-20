{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-inferenceaccelerator.html

module Stratosphere.ResourceProperties.ECSTaskDefinitionInferenceAccelerator where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskDefinitionInferenceAccelerator. See
-- 'ecsTaskDefinitionInferenceAccelerator' for a more convenient
-- constructor.
data ECSTaskDefinitionInferenceAccelerator =
  ECSTaskDefinitionInferenceAccelerator
  { _eCSTaskDefinitionInferenceAcceleratorDeviceName :: Maybe (Val Text)
  , _eCSTaskDefinitionInferenceAcceleratorDeviceType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSTaskDefinitionInferenceAccelerator where
  toJSON ECSTaskDefinitionInferenceAccelerator{..} =
    object $
    catMaybes
    [ fmap (("DeviceName",) . toJSON) _eCSTaskDefinitionInferenceAcceleratorDeviceName
    , fmap (("DeviceType",) . toJSON) _eCSTaskDefinitionInferenceAcceleratorDeviceType
    ]

-- | Constructor for 'ECSTaskDefinitionInferenceAccelerator' containing
-- required fields as arguments.
ecsTaskDefinitionInferenceAccelerator
  :: ECSTaskDefinitionInferenceAccelerator
ecsTaskDefinitionInferenceAccelerator  =
  ECSTaskDefinitionInferenceAccelerator
  { _eCSTaskDefinitionInferenceAcceleratorDeviceName = Nothing
  , _eCSTaskDefinitionInferenceAcceleratorDeviceType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-inferenceaccelerator.html#cfn-ecs-taskdefinition-inferenceaccelerator-devicename
ecstdiaDeviceName :: Lens' ECSTaskDefinitionInferenceAccelerator (Maybe (Val Text))
ecstdiaDeviceName = lens _eCSTaskDefinitionInferenceAcceleratorDeviceName (\s a -> s { _eCSTaskDefinitionInferenceAcceleratorDeviceName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-inferenceaccelerator.html#cfn-ecs-taskdefinition-inferenceaccelerator-devicetype
ecstdiaDeviceType :: Lens' ECSTaskDefinitionInferenceAccelerator (Maybe (Val Text))
ecstdiaDeviceType = lens _eCSTaskDefinitionInferenceAcceleratorDeviceType (\s a -> s { _eCSTaskDefinitionInferenceAcceleratorDeviceType = a })
