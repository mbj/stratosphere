{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-capacityproviderstrategyitem.html

module Stratosphere.ResourceProperties.ECSClusterCapacityProviderStrategyItem where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSClusterCapacityProviderStrategyItem. See
-- 'ecsClusterCapacityProviderStrategyItem' for a more convenient
-- constructor.
data ECSClusterCapacityProviderStrategyItem =
  ECSClusterCapacityProviderStrategyItem
  { _eCSClusterCapacityProviderStrategyItemBase :: Maybe (Val Integer)
  , _eCSClusterCapacityProviderStrategyItemCapacityProvider :: Maybe (Val Text)
  , _eCSClusterCapacityProviderStrategyItemWeight :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ECSClusterCapacityProviderStrategyItem where
  toJSON ECSClusterCapacityProviderStrategyItem{..} =
    object $
    catMaybes
    [ fmap (("Base",) . toJSON) _eCSClusterCapacityProviderStrategyItemBase
    , fmap (("CapacityProvider",) . toJSON) _eCSClusterCapacityProviderStrategyItemCapacityProvider
    , fmap (("Weight",) . toJSON) _eCSClusterCapacityProviderStrategyItemWeight
    ]

-- | Constructor for 'ECSClusterCapacityProviderStrategyItem' containing
-- required fields as arguments.
ecsClusterCapacityProviderStrategyItem
  :: ECSClusterCapacityProviderStrategyItem
ecsClusterCapacityProviderStrategyItem  =
  ECSClusterCapacityProviderStrategyItem
  { _eCSClusterCapacityProviderStrategyItemBase = Nothing
  , _eCSClusterCapacityProviderStrategyItemCapacityProvider = Nothing
  , _eCSClusterCapacityProviderStrategyItemWeight = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-capacityproviderstrategyitem.html#cfn-ecs-cluster-capacityproviderstrategyitem-base
ecsccpsiBase :: Lens' ECSClusterCapacityProviderStrategyItem (Maybe (Val Integer))
ecsccpsiBase = lens _eCSClusterCapacityProviderStrategyItemBase (\s a -> s { _eCSClusterCapacityProviderStrategyItemBase = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-capacityproviderstrategyitem.html#cfn-ecs-cluster-capacityproviderstrategyitem-capacityprovider
ecsccpsiCapacityProvider :: Lens' ECSClusterCapacityProviderStrategyItem (Maybe (Val Text))
ecsccpsiCapacityProvider = lens _eCSClusterCapacityProviderStrategyItemCapacityProvider (\s a -> s { _eCSClusterCapacityProviderStrategyItemCapacityProvider = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-cluster-capacityproviderstrategyitem.html#cfn-ecs-cluster-capacityproviderstrategyitem-weight
ecsccpsiWeight :: Lens' ECSClusterCapacityProviderStrategyItem (Maybe (Val Integer))
ecsccpsiWeight = lens _eCSClusterCapacityProviderStrategyItemWeight (\s a -> s { _eCSClusterCapacityProviderStrategyItemWeight = a })
