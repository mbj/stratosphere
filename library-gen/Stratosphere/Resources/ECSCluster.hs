{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html

module Stratosphere.Resources.ECSCluster where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ECSCluster. See 'ecsCluster' for a more
-- | convenient constructor.
data ECSCluster =
  ECSCluster
  { _eCSClusterClusterName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ECSCluster where
  toJSON ECSCluster{..} =
    object $
    catMaybes
    [ ("ClusterName" .=) <$> _eCSClusterClusterName
    ]

instance FromJSON ECSCluster where
  parseJSON (Object obj) =
    ECSCluster <$>
      obj .:? "ClusterName"
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
