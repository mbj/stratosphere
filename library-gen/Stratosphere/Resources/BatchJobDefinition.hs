{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html

module Stratosphere.Resources.BatchJobDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.BatchJobDefinitionContainerProperties
import Stratosphere.ResourceProperties.BatchJobDefinitionRetryStrategy
import Stratosphere.ResourceProperties.BatchJobDefinitionTimeout

-- | Full data type definition for BatchJobDefinition. See
-- 'batchJobDefinition' for a more convenient constructor.
data BatchJobDefinition =
  BatchJobDefinition
  { _batchJobDefinitionContainerProperties :: BatchJobDefinitionContainerProperties
  , _batchJobDefinitionJobDefinitionName :: Maybe (Val Text)
  , _batchJobDefinitionParameters :: Maybe Object
  , _batchJobDefinitionRetryStrategy :: Maybe BatchJobDefinitionRetryStrategy
  , _batchJobDefinitionTimeout :: Maybe BatchJobDefinitionTimeout
  , _batchJobDefinitionType :: Val Text
  } deriving (Show, Eq)

instance ToJSON BatchJobDefinition where
  toJSON BatchJobDefinition{..} =
    object $
    catMaybes
    [ (Just . ("ContainerProperties",) . toJSON) _batchJobDefinitionContainerProperties
    , fmap (("JobDefinitionName",) . toJSON) _batchJobDefinitionJobDefinitionName
    , fmap (("Parameters",) . toJSON) _batchJobDefinitionParameters
    , fmap (("RetryStrategy",) . toJSON) _batchJobDefinitionRetryStrategy
    , fmap (("Timeout",) . toJSON) _batchJobDefinitionTimeout
    , (Just . ("Type",) . toJSON) _batchJobDefinitionType
    ]

instance FromJSON BatchJobDefinition where
  parseJSON (Object obj) =
    BatchJobDefinition <$>
      (obj .: "ContainerProperties") <*>
      (obj .:? "JobDefinitionName") <*>
      (obj .:? "Parameters") <*>
      (obj .:? "RetryStrategy") <*>
      (obj .:? "Timeout") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'BatchJobDefinition' containing required fields as
-- arguments.
batchJobDefinition
  :: BatchJobDefinitionContainerProperties -- ^ 'bjdContainerProperties'
  -> Val Text -- ^ 'bjdType'
  -> BatchJobDefinition
batchJobDefinition containerPropertiesarg typearg =
  BatchJobDefinition
  { _batchJobDefinitionContainerProperties = containerPropertiesarg
  , _batchJobDefinitionJobDefinitionName = Nothing
  , _batchJobDefinitionParameters = Nothing
  , _batchJobDefinitionRetryStrategy = Nothing
  , _batchJobDefinitionTimeout = Nothing
  , _batchJobDefinitionType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-containerproperties
bjdContainerProperties :: Lens' BatchJobDefinition BatchJobDefinitionContainerProperties
bjdContainerProperties = lens _batchJobDefinitionContainerProperties (\s a -> s { _batchJobDefinitionContainerProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-batch-jobdefinition.html#cfn-batch-jobdefinition-jobdefinitionname
bjdJobDefinitionName :: Lens' BatchJobDefinition (Maybe (Val Text))
bjdJobDefinitionName = lens _batchJobDefinitionJobDefinitionName (\s a -> s { _batchJobDefinitionJobDefinitionName = a })

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
