{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html

module Stratosphere.Resources.ECSCluster where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSCluster. See 'ecsCluster' for a more
-- convenient constructor.
data ECSCluster =
  ECSCluster
  { _eCSClusterClusterName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSCluster where
  toJSON ECSCluster{..} =
    object $
    catMaybes
    [ fmap (("ClusterName",) . toJSON) _eCSClusterClusterName
    ]

instance FromJSON ECSCluster where
  parseJSON (Object obj) =
    ECSCluster <$>
      (obj .:? "ClusterName")
  parseJSON _ = mempty

-- | Constructor for 'ECSCluster' containing required fields as arguments.
ecsCluster
  :: ECSCluster
ecsCluster  =
  ECSCluster
  { _eCSClusterClusterName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-clustername
ecscClusterName :: Lens' ECSCluster (Maybe (Val Text))
ecscClusterName = lens _eCSClusterClusterName (\s a -> s { _eCSClusterClusterName = a })
