{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html

module Stratosphere.Resources.ECSPrimaryTaskSet where

import Stratosphere.ResourceImports


-- | Full data type definition for ECSPrimaryTaskSet. See 'ecsPrimaryTaskSet'
-- for a more convenient constructor.
data ECSPrimaryTaskSet =
  ECSPrimaryTaskSet
  { _eCSPrimaryTaskSetCluster :: Val Text
  , _eCSPrimaryTaskSetService :: Val Text
  , _eCSPrimaryTaskSetTaskSetId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ECSPrimaryTaskSet where
  toResourceProperties ECSPrimaryTaskSet{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ECS::PrimaryTaskSet"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Cluster",) . toJSON) _eCSPrimaryTaskSetCluster
        , (Just . ("Service",) . toJSON) _eCSPrimaryTaskSetService
        , (Just . ("TaskSetId",) . toJSON) _eCSPrimaryTaskSetTaskSetId
        ]
    }

-- | Constructor for 'ECSPrimaryTaskSet' containing required fields as
-- arguments.
ecsPrimaryTaskSet
  :: Val Text -- ^ 'ecsptsCluster'
  -> Val Text -- ^ 'ecsptsService'
  -> Val Text -- ^ 'ecsptsTaskSetId'
  -> ECSPrimaryTaskSet
ecsPrimaryTaskSet clusterarg servicearg taskSetIdarg =
  ECSPrimaryTaskSet
  { _eCSPrimaryTaskSetCluster = clusterarg
  , _eCSPrimaryTaskSetService = servicearg
  , _eCSPrimaryTaskSetTaskSetId = taskSetIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html#cfn-ecs-primarytaskset-cluster
ecsptsCluster :: Lens' ECSPrimaryTaskSet (Val Text)
ecsptsCluster = lens _eCSPrimaryTaskSetCluster (\s a -> s { _eCSPrimaryTaskSetCluster = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html#cfn-ecs-primarytaskset-service
ecsptsService :: Lens' ECSPrimaryTaskSet (Val Text)
ecsptsService = lens _eCSPrimaryTaskSetService (\s a -> s { _eCSPrimaryTaskSetService = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-primarytaskset.html#cfn-ecs-primarytaskset-tasksetid
ecsptsTaskSetId :: Lens' ECSPrimaryTaskSet (Val Text)
ecsptsTaskSetId = lens _eCSPrimaryTaskSetTaskSetId (\s a -> s { _eCSPrimaryTaskSetTaskSetId = a })
