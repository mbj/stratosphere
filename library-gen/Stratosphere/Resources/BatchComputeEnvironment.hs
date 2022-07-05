{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
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
  , _batchComputeEnvironmentComputeResources :: Maybe BatchComputeEnvironmentComputeResources
  , _batchComputeEnvironmentServiceRole :: Val Text
  , _batchComputeEnvironmentState :: Maybe (Val Text)
  , _batchComputeEnvironmentType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties BatchComputeEnvironment where
  toResourceProperties BatchComputeEnvironment{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Batch::ComputeEnvironment"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ComputeEnvironmentName",) . toJSON) _batchComputeEnvironmentComputeEnvironmentName
        , fmap (("ComputeResources",) . toJSON) _batchComputeEnvironmentComputeResources
        , (Just . ("ServiceRole",) . toJSON) _batchComputeEnvironmentServiceRole
        , fmap (("State",) . toJSON) _batchComputeEnvironmentState
        , (Just . ("Type",) . toJSON) _batchComputeEnvironmentType
        ]
    }

-- | Constructor for 'BatchComputeEnvironment' containing required fields as
-- arguments.
batchComputeEnvironment
  :: Val Text -- ^ 'bceServiceRole'
  -> Val Text -- ^ 'bceType'
  -> BatchComputeEnvironment
batchComputeEnvironment serviceRolearg typearg =
  BatchComputeEnvironment
  { _batchComputeEnvironmentComputeEnvironmentName = Nothing
  , _batchComputeEnvironmentComputeResources = Nothing
  , _batchComputeEnvironmentServiceRole = serviceRolearg
  , _batchComputeEnvironmentState = Nothing
  , _batchComputeEnvironmentType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-computeenvironmentname
bceComputeEnvironmentName :: Lens' BatchComputeEnvironment (Maybe (Val Text))
bceComputeEnvironmentName = lens _batchComputeEnvironmentComputeEnvironmentName (\s a -> s { _batchComputeEnvironmentComputeEnvironmentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-computeenvironment.html#cfn-batch-computeenvironment-computeresources
bceComputeResources :: Lens' BatchComputeEnvironment (Maybe BatchComputeEnvironmentComputeResources)
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
