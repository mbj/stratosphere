{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html

module Stratosphere.Resources.LambdaEventSourceMapping where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LambdaEventSourceMappingDestinationConfig

-- | Full data type definition for LambdaEventSourceMapping. See
-- 'lambdaEventSourceMapping' for a more convenient constructor.
data LambdaEventSourceMapping =
  LambdaEventSourceMapping
  { _lambdaEventSourceMappingBatchSize :: Maybe (Val Integer)
  , _lambdaEventSourceMappingBisectBatchOnFunctionError :: Maybe (Val Bool)
  , _lambdaEventSourceMappingDestinationConfig :: Maybe LambdaEventSourceMappingDestinationConfig
  , _lambdaEventSourceMappingEnabled :: Maybe (Val Bool)
  , _lambdaEventSourceMappingEventSourceArn :: Val Text
  , _lambdaEventSourceMappingFunctionName :: Val Text
  , _lambdaEventSourceMappingMaximumBatchingWindowInSeconds :: Maybe (Val Integer)
  , _lambdaEventSourceMappingMaximumRecordAgeInSeconds :: Maybe (Val Integer)
  , _lambdaEventSourceMappingMaximumRetryAttempts :: Maybe (Val Integer)
  , _lambdaEventSourceMappingParallelizationFactor :: Maybe (Val Integer)
  , _lambdaEventSourceMappingStartingPosition :: Maybe (Val Text)
  , _lambdaEventSourceMappingTopics :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToResourceProperties LambdaEventSourceMapping where
  toResourceProperties LambdaEventSourceMapping{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Lambda::EventSourceMapping"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("BatchSize",) . toJSON) _lambdaEventSourceMappingBatchSize
        , fmap (("BisectBatchOnFunctionError",) . toJSON) _lambdaEventSourceMappingBisectBatchOnFunctionError
        , fmap (("DestinationConfig",) . toJSON) _lambdaEventSourceMappingDestinationConfig
        , fmap (("Enabled",) . toJSON) _lambdaEventSourceMappingEnabled
        , (Just . ("EventSourceArn",) . toJSON) _lambdaEventSourceMappingEventSourceArn
        , (Just . ("FunctionName",) . toJSON) _lambdaEventSourceMappingFunctionName
        , fmap (("MaximumBatchingWindowInSeconds",) . toJSON) _lambdaEventSourceMappingMaximumBatchingWindowInSeconds
        , fmap (("MaximumRecordAgeInSeconds",) . toJSON) _lambdaEventSourceMappingMaximumRecordAgeInSeconds
        , fmap (("MaximumRetryAttempts",) . toJSON) _lambdaEventSourceMappingMaximumRetryAttempts
        , fmap (("ParallelizationFactor",) . toJSON) _lambdaEventSourceMappingParallelizationFactor
        , fmap (("StartingPosition",) . toJSON) _lambdaEventSourceMappingStartingPosition
        , fmap (("Topics",) . toJSON) _lambdaEventSourceMappingTopics
        ]
    }

-- | Constructor for 'LambdaEventSourceMapping' containing required fields as
-- arguments.
lambdaEventSourceMapping
  :: Val Text -- ^ 'lesmEventSourceArn'
  -> Val Text -- ^ 'lesmFunctionName'
  -> LambdaEventSourceMapping
lambdaEventSourceMapping eventSourceArnarg functionNamearg =
  LambdaEventSourceMapping
  { _lambdaEventSourceMappingBatchSize = Nothing
  , _lambdaEventSourceMappingBisectBatchOnFunctionError = Nothing
  , _lambdaEventSourceMappingDestinationConfig = Nothing
  , _lambdaEventSourceMappingEnabled = Nothing
  , _lambdaEventSourceMappingEventSourceArn = eventSourceArnarg
  , _lambdaEventSourceMappingFunctionName = functionNamearg
  , _lambdaEventSourceMappingMaximumBatchingWindowInSeconds = Nothing
  , _lambdaEventSourceMappingMaximumRecordAgeInSeconds = Nothing
  , _lambdaEventSourceMappingMaximumRetryAttempts = Nothing
  , _lambdaEventSourceMappingParallelizationFactor = Nothing
  , _lambdaEventSourceMappingStartingPosition = Nothing
  , _lambdaEventSourceMappingTopics = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-batchsize
lesmBatchSize :: Lens' LambdaEventSourceMapping (Maybe (Val Integer))
lesmBatchSize = lens _lambdaEventSourceMappingBatchSize (\s a -> s { _lambdaEventSourceMappingBatchSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-bisectbatchonfunctionerror
lesmBisectBatchOnFunctionError :: Lens' LambdaEventSourceMapping (Maybe (Val Bool))
lesmBisectBatchOnFunctionError = lens _lambdaEventSourceMappingBisectBatchOnFunctionError (\s a -> s { _lambdaEventSourceMappingBisectBatchOnFunctionError = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-destinationconfig
lesmDestinationConfig :: Lens' LambdaEventSourceMapping (Maybe LambdaEventSourceMappingDestinationConfig)
lesmDestinationConfig = lens _lambdaEventSourceMappingDestinationConfig (\s a -> s { _lambdaEventSourceMappingDestinationConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-enabled
lesmEnabled :: Lens' LambdaEventSourceMapping (Maybe (Val Bool))
lesmEnabled = lens _lambdaEventSourceMappingEnabled (\s a -> s { _lambdaEventSourceMappingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-eventsourcearn
lesmEventSourceArn :: Lens' LambdaEventSourceMapping (Val Text)
lesmEventSourceArn = lens _lambdaEventSourceMappingEventSourceArn (\s a -> s { _lambdaEventSourceMappingEventSourceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-functionname
lesmFunctionName :: Lens' LambdaEventSourceMapping (Val Text)
lesmFunctionName = lens _lambdaEventSourceMappingFunctionName (\s a -> s { _lambdaEventSourceMappingFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumbatchingwindowinseconds
lesmMaximumBatchingWindowInSeconds :: Lens' LambdaEventSourceMapping (Maybe (Val Integer))
lesmMaximumBatchingWindowInSeconds = lens _lambdaEventSourceMappingMaximumBatchingWindowInSeconds (\s a -> s { _lambdaEventSourceMappingMaximumBatchingWindowInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumrecordageinseconds
lesmMaximumRecordAgeInSeconds :: Lens' LambdaEventSourceMapping (Maybe (Val Integer))
lesmMaximumRecordAgeInSeconds = lens _lambdaEventSourceMappingMaximumRecordAgeInSeconds (\s a -> s { _lambdaEventSourceMappingMaximumRecordAgeInSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-maximumretryattempts
lesmMaximumRetryAttempts :: Lens' LambdaEventSourceMapping (Maybe (Val Integer))
lesmMaximumRetryAttempts = lens _lambdaEventSourceMappingMaximumRetryAttempts (\s a -> s { _lambdaEventSourceMappingMaximumRetryAttempts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-parallelizationfactor
lesmParallelizationFactor :: Lens' LambdaEventSourceMapping (Maybe (Val Integer))
lesmParallelizationFactor = lens _lambdaEventSourceMappingParallelizationFactor (\s a -> s { _lambdaEventSourceMappingParallelizationFactor = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-startingposition
lesmStartingPosition :: Lens' LambdaEventSourceMapping (Maybe (Val Text))
lesmStartingPosition = lens _lambdaEventSourceMappingStartingPosition (\s a -> s { _lambdaEventSourceMappingStartingPosition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-topics
lesmTopics :: Lens' LambdaEventSourceMapping (Maybe (ValList Text))
lesmTopics = lens _lambdaEventSourceMappingTopics (\s a -> s { _lambdaEventSourceMappingTopics = a })
