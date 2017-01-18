{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html

module Stratosphere.Resources.ECSCluster where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ECSCluster. See 'ecsCluster' for a more
-- | convenient constructor.
data ECSCluster =
  ECSCluster
  { _eCSClusterClusterName :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ECSCluster where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

instance FromJSON ECSCluster where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 11, omitNothingFields = True }

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
