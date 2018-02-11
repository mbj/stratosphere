{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html

module Stratosphere.Resources.BatchComputeEnvironment where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BatchComputeEnvironmentComputeResources

-- | Full data type definition for BatchComputeEnvironment. See
-- 'batchComputeEnvironment' for a more convenient constructor.
data BatchComputeEnvironment =
  BatchComputeEnvironment
  { _batchComputeEnvironmentComputeEnvironmentName :: Maybe (Val Text)
  , _batchComputeEnvironmentComputeResources :: BatchComputeEnvironmentComputeResources
  , _batchComputeEnvironmentServiceRole :: Val Text
  , _batchComputeEnvironmentState :: Maybe (Val Text)
  , _batchComputeEnvironmentType :: Val Text
  } deriving (Show, Eq)

instance ToJSON BatchComputeEnvironment where
  toJSON BatchComputeEnvironment{..} =
    object $
    catMaybes
    [ fmap (("ComputeEnvironmentName",) . toJSON) _batchComputeEnvironmentComputeEnvironmentName
    , (Just . ("ComputeResources",) . toJSON) _batchComputeEnvironmentComputeResources
    , (Just . ("ServiceRole",) . toJSON) _batchComputeEnvironmentServiceRole
    , fmap (("State",) . toJSON) _batchComputeEnvironmentState
    , (Just . ("Type",) . toJSON) _batchComputeEnvironmentType
    ]

instance FromJSON BatchComputeEnvironment where
  parseJSON (Object obj) =
    BatchComputeEnvironment <$>
      (obj .:? "ComputeEnvironmentName") <*>
      (obj .: "ComputeResources") <*>
      (obj .: "ServiceRole") <*>
      (obj .:? "State") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'BatchComputeEnvironment' containing required fields as
-- arguments.
batchComputeEnvironment
  :: BatchComputeEnvironmentComputeResources -- ^ 'bceComputeResources'
  -> Val Text -- ^ 'bceServiceRole'
  -> Val Text -- ^ 'bceType'
  -> BatchComputeEnvironment
batchComputeEnvironment computeResourcesarg serviceRolearg typearg =
  BatchComputeEnvironment
  { _batchComputeEnvironmentComputeEnvironmentName = Nothing
  , _batchComputeEnvironmentComputeResources = computeResourcesarg
  , _batchComputeEnvironmentServiceRole = serviceRolearg
  , _batchComputeEnvironmentState = Nothing
  , _batchComputeEnvironmentType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-computeenvironmentname
bceComputeEnvironmentName :: Lens' BatchComputeEnvironment (Maybe (Val Text))
bceComputeEnvironmentName = lens _batchComputeEnvironmentComputeEnvironmentName (\s a -> s { _batchComputeEnvironmentComputeEnvironmentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-computeresources
bceComputeResources :: Lens' BatchComputeEnvironment BatchComputeEnvironmentComputeResources
bceComputeResources = lens _batchComputeEnvironmentComputeResources (\s a -> s { _batchComputeEnvironmentComputeResources = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-servicerole
bceServiceRole :: Lens' BatchComputeEnvironment (Val Text)
bceServiceRole = lens _batchComputeEnvironmentServiceRole (\s a -> s { _batchComputeEnvironmentServiceRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-state
bceState :: Lens' BatchComputeEnvironment (Maybe (Val Text))
bceState = lens _batchComputeEnvironmentState (\s a -> s { _batchComputeEnvironmentState = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-type
bceType :: Lens' BatchComputeEnvironment (Val Text)
bceType = lens _batchComputeEnvironmentType (\s a -> s { _batchComputeEnvironmentType = a })
