{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-scale.html

module Stratosphere.ResourceProperties.ECSTaskSetScale where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSTaskSetScale. See 'ecsTaskSetScale' for
-- a more convenient constructor.
data ECSTaskSetScale =
  ECSTaskSetScale
  { _eCSTaskSetScaleUnit :: Maybe (Val Text)
  , _eCSTaskSetScaleValue :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON ECSTaskSetScale where
  toJSON ECSTaskSetScale{..} =
    object $
    catMaybes
    [ fmap (("Unit",) . toJSON) _eCSTaskSetScaleUnit
    , fmap (("Value",) . toJSON) _eCSTaskSetScaleValue
    ]

-- | Constructor for 'ECSTaskSetScale' containing required fields as
-- arguments.
ecsTaskSetScale
  :: ECSTaskSetScale
ecsTaskSetScale  =
  ECSTaskSetScale
  { _eCSTaskSetScaleUnit = Nothing
  , _eCSTaskSetScaleValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-scale.html#cfn-ecs-taskset-scale-unit
ecstssUnit :: Lens' ECSTaskSetScale (Maybe (Val Text))
ecstssUnit = lens _eCSTaskSetScaleUnit (\s a -> s { _eCSTaskSetScaleUnit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskset-scale.html#cfn-ecs-taskset-scale-value
ecstssValue :: Lens' ECSTaskSetScale (Maybe (Val Double))
ecstssValue = lens _eCSTaskSetScaleValue (\s a -> s { _eCSTaskSetScaleValue = a })
