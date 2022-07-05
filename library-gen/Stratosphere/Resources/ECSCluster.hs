{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html

module Stratosphere.Resources.ECSCluster where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ECSClusterClusterSettings
import Stratosphere.ResourceProperties.ECSClusterCapacityProviderStrategyItem
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ECSCluster. See 'ecsCluster' for a more
-- convenient constructor.
data ECSCluster =
  ECSCluster
  { _eCSClusterCapacityProviders :: Maybe (ValList Text)
  , _eCSClusterClusterName :: Maybe (Val Text)
  , _eCSClusterClusterSettings :: Maybe [ECSClusterClusterSettings]
  , _eCSClusterDefaultCapacityProviderStrategy :: Maybe [ECSClusterCapacityProviderStrategyItem]
  , _eCSClusterTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ECSCluster where
  toResourceProperties ECSCluster{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ECS::Cluster"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CapacityProviders",) . toJSON) _eCSClusterCapacityProviders
        , fmap (("ClusterName",) . toJSON) _eCSClusterClusterName
        , fmap (("ClusterSettings",) . toJSON) _eCSClusterClusterSettings
        , fmap (("DefaultCapacityProviderStrategy",) . toJSON) _eCSClusterDefaultCapacityProviderStrategy
        , fmap (("Tags",) . toJSON) _eCSClusterTags
        ]
    }

-- | Constructor for 'ECSCluster' containing required fields as arguments.
ecsCluster
  :: ECSCluster
ecsCluster  =
  ECSCluster
  { _eCSClusterCapacityProviders = Nothing
  , _eCSClusterClusterName = Nothing
  , _eCSClusterClusterSettings = Nothing
  , _eCSClusterDefaultCapacityProviderStrategy = Nothing
  , _eCSClusterTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-capacityproviders
ecscCapacityProviders :: Lens' ECSCluster (Maybe (ValList Text))
ecscCapacityProviders = lens _eCSClusterCapacityProviders (\s a -> s { _eCSClusterCapacityProviders = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-clustername
ecscClusterName :: Lens' ECSCluster (Maybe (Val Text))
ecscClusterName = lens _eCSClusterClusterName (\s a -> s { _eCSClusterClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-clustersettings
ecscClusterSettings :: Lens' ECSCluster (Maybe [ECSClusterClusterSettings])
ecscClusterSettings = lens _eCSClusterClusterSettings (\s a -> s { _eCSClusterClusterSettings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-defaultcapacityproviderstrategy
ecscDefaultCapacityProviderStrategy :: Lens' ECSCluster (Maybe [ECSClusterCapacityProviderStrategyItem])
ecscDefaultCapacityProviderStrategy = lens _eCSClusterDefaultCapacityProviderStrategy (\s a -> s { _eCSClusterDefaultCapacityProviderStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-tags
ecscTags :: Lens' ECSCluster (Maybe [Tag])
ecscTags = lens _eCSClusterTags (\s a -> s { _eCSClusterTags = a })
