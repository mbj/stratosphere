{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-capacityproviderstrategyitem.html

module Stratosphere.ResourceProperties.ECSServiceCapacityProviderStrategyItem where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSServiceCapacityProviderStrategyItem. See
-- 'ecsServiceCapacityProviderStrategyItem' for a more convenient
-- constructor.
data ECSServiceCapacityProviderStrategyItem =
  ECSServiceCapacityProviderStrategyItem
  { _eCSServiceCapacityProviderStrategyItemBase :: Maybe (Val Integer)
  , _eCSServiceCapacityProviderStrategyItemCapacityProvider :: Maybe (Val Text)
  , _eCSServiceCapacityProviderStrategyItemWeight :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ECSServiceCapacityProviderStrategyItem where
  toJSON ECSServiceCapacityProviderStrategyItem{..} =
    object $
    catMaybes
    [ fmap (("Base",) . toJSON) _eCSServiceCapacityProviderStrategyItemBase
    , fmap (("CapacityProvider",) . toJSON) _eCSServiceCapacityProviderStrategyItemCapacityProvider
    , fmap (("Weight",) . toJSON) _eCSServiceCapacityProviderStrategyItemWeight
    ]

-- | Constructor for 'ECSServiceCapacityProviderStrategyItem' containing
-- required fields as arguments.
ecsServiceCapacityProviderStrategyItem
  :: ECSServiceCapacityProviderStrategyItem
ecsServiceCapacityProviderStrategyItem  =
  ECSServiceCapacityProviderStrategyItem
  { _eCSServiceCapacityProviderStrategyItemBase = Nothing
  , _eCSServiceCapacityProviderStrategyItemCapacityProvider = Nothing
  , _eCSServiceCapacityProviderStrategyItemWeight = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-capacityproviderstrategyitem.html#cfn-ecs-service-capacityproviderstrategyitem-base
ecsscpsiBase :: Lens' ECSServiceCapacityProviderStrategyItem (Maybe (Val Integer))
ecsscpsiBase = lens _eCSServiceCapacityProviderStrategyItemBase (\s a -> s { _eCSServiceCapacityProviderStrategyItemBase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-capacityproviderstrategyitem.html#cfn-ecs-service-capacityproviderstrategyitem-capacityprovider
ecsscpsiCapacityProvider :: Lens' ECSServiceCapacityProviderStrategyItem (Maybe (Val Text))
ecsscpsiCapacityProvider = lens _eCSServiceCapacityProviderStrategyItemCapacityProvider (\s a -> s { _eCSServiceCapacityProviderStrategyItemCapacityProvider = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-capacityproviderstrategyitem.html#cfn-ecs-service-capacityproviderstrategyitem-weight
ecsscpsiWeight :: Lens' ECSServiceCapacityProviderStrategyItem (Maybe (Val Integer))
ecsscpsiWeight = lens _eCSServiceCapacityProviderStrategyItemWeight (\s a -> s { _eCSServiceCapacityProviderStrategyItemWeight = a })
