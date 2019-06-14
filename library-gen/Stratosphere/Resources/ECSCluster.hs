{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html

module Stratosphere.Resources.ECSCluster where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ECSCluster. See 'ecsCluster' for a more
-- convenient constructor.
data ECSCluster =
  ECSCluster
  { _eCSClusterClusterName :: Maybe (Val Text)
  , _eCSClusterTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ECSCluster where
  toResourceProperties ECSCluster{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ECS::Cluster"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("ClusterName",) . toJSON) _eCSClusterClusterName
        , fmap (("Tags",) . toJSON) _eCSClusterTags
        ]
    }

-- | Constructor for 'ECSCluster' containing required fields as arguments.
ecsCluster
  :: ECSCluster
ecsCluster  =
  ECSCluster
  { _eCSClusterClusterName = Nothing
  , _eCSClusterTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-clustername
ecscClusterName :: Lens' ECSCluster (Maybe (Val Text))
ecscClusterName = lens _eCSClusterClusterName (\s a -> s { _eCSClusterClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-tags
ecscTags :: Lens' ECSCluster (Maybe [Tag])
ecscTags = lens _eCSClusterTags (\s a -> s { _eCSClusterTags = a })
