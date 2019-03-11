{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html

module Stratosphere.Resources.BatchJobDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BatchJobDefinitionContainerProperties
import Stratosphere.ResourceProperties.BatchJobDefinitionNodeProperties
import Stratosphere.ResourceProperties.BatchJobDefinitionRetryStrategy
import Stratosphere.ResourceProperties.BatchJobDefinitionTimeout

-- | Full data type definition for BatchJobDefinition. See
-- 'batchJobDefinition' for a more convenient constructor.
data BatchJobDefinition =
  BatchJobDefinition
  { _batchJobDefinitionContainerProperties :: Maybe BatchJobDefinitionContainerProperties
  , _batchJobDefinitionJobDefinitionName :: Maybe (Val Text)
  , _batchJobDefinitionNodeProperties :: Maybe BatchJobDefinitionNodeProperties
  , _batchJobDefinitionParameters :: Maybe Object
  , _batchJobDefinitionRetryStrategy :: Maybe BatchJobDefinitionRetryStrategy
  , _batchJobDefinitionTimeout :: Maybe BatchJobDefinitionTimeout
  , _batchJobDefinitionType :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties BatchJobDefinition where
  toResourceProperties BatchJobDefinition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Batch::JobDefinition"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("ContainerProperties",) . toJSON) _batchJobDefinitionContainerProperties
        , fmap (("JobDefinitionName",) . toJSON) _batchJobDefinitionJobDefinitionName
        , fmap (("NodeProperties",) . toJSON) _batchJobDefinitionNodeProperties
        , fmap (("Parameters",) . toJSON) _batchJobDefinitionParameters
        , fmap (("RetryStrategy",) . toJSON) _batchJobDefinitionRetryStrategy
        , fmap (("Timeout",) . toJSON) _batchJobDefinitionTimeout
        , (Just . ("Type",) . toJSON) _batchJobDefinitionType
        ]
    }

-- | Constructor for 'BatchJobDefinition' containing required fields as
-- arguments.
batchJobDefinition
  :: Val Text -- ^ 'bjdType'
  -> BatchJobDefinition
batchJobDefinition typearg =
  BatchJobDefinition
  { _batchJobDefinitionContainerProperties = Nothing
  , _batchJobDefinitionJobDefinitionName = Nothing
  , _batchJobDefinitionNodeProperties = Nothing
  , _batchJobDefinitionParameters = Nothing
  , _batchJobDefinitionRetryStrategy = Nothing
  , _batchJobDefinitionTimeout = Nothing
  , _batchJobDefinitionType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-containerproperties
bjdContainerProperties :: Lens' BatchJobDefinition (Maybe BatchJobDefinitionContainerProperties)
bjdContainerProperties = lens _batchJobDefinitionContainerProperties (\s a -> s { _batchJobDefinitionContainerProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-jobdefinitionname
bjdJobDefinitionName :: Lens' BatchJobDefinition (Maybe (Val Text))
bjdJobDefinitionName = lens _batchJobDefinitionJobDefinitionName (\s a -> s { _batchJobDefinitionJobDefinitionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-nodeproperties
bjdNodeProperties :: Lens' BatchJobDefinition (Maybe BatchJobDefinitionNodeProperties)
bjdNodeProperties = lens _batchJobDefinitionNodeProperties (\s a -> s { _batchJobDefinitionNodeProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-parameters
bjdParameters :: Lens' BatchJobDefinition (Maybe Object)
bjdParameters = lens _batchJobDefinitionParameters (\s a -> s { _batchJobDefinitionParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-retrystrategy
bjdRetryStrategy :: Lens' BatchJobDefinition (Maybe BatchJobDefinitionRetryStrategy)
bjdRetryStrategy = lens _batchJobDefinitionRetryStrategy (\s a -> s { _batchJobDefinitionRetryStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-timeout
bjdTimeout :: Lens' BatchJobDefinition (Maybe BatchJobDefinitionTimeout)
bjdTimeout = lens _batchJobDefinitionTimeout (\s a -> s { _batchJobDefinitionTimeout = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-type
bjdType :: Lens' BatchJobDefinition (Val Text)
bjdType = lens _batchJobDefinitionType (\s a -> s { _batchJobDefinitionType = a })
