{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html

module Stratosphere.Resources.LambdaEventSourceMapping where

import Stratosphere.ResourceImports


-- | Full data type definition for LambdaEventSourceMapping. See
-- 'lambdaEventSourceMapping' for a more convenient constructor.
data LambdaEventSourceMapping =
  LambdaEventSourceMapping
  { _lambdaEventSourceMappingBatchSize :: Maybe (Val Integer)
  , _lambdaEventSourceMappingEnabled :: Maybe (Val Bool)
  , _lambdaEventSourceMappingEventSourceArn :: Val Text
  , _lambdaEventSourceMappingFunctionName :: Val Text
  , _lambdaEventSourceMappingStartingPosition :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties LambdaEventSourceMapping where
  toResourceProperties LambdaEventSourceMapping{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Lambda::EventSourceMapping"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("BatchSize",) . toJSON) _lambdaEventSourceMappingBatchSize
        , fmap (("Enabled",) . toJSON) _lambdaEventSourceMappingEnabled
        , (Just . ("EventSourceArn",) . toJSON) _lambdaEventSourceMappingEventSourceArn
        , (Just . ("FunctionName",) . toJSON) _lambdaEventSourceMappingFunctionName
        , fmap (("StartingPosition",) . toJSON) _lambdaEventSourceMappingStartingPosition
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
  , _lambdaEventSourceMappingEnabled = Nothing
  , _lambdaEventSourceMappingEventSourceArn = eventSourceArnarg
  , _lambdaEventSourceMappingFunctionName = functionNamearg
  , _lambdaEventSourceMappingStartingPosition = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-batchsize
lesmBatchSize :: Lens' LambdaEventSourceMapping (Maybe (Val Integer))
lesmBatchSize = lens _lambdaEventSourceMappingBatchSize (\s a -> s { _lambdaEventSourceMappingBatchSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-enabled
lesmEnabled :: Lens' LambdaEventSourceMapping (Maybe (Val Bool))
lesmEnabled = lens _lambdaEventSourceMappingEnabled (\s a -> s { _lambdaEventSourceMappingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-eventsourcearn
lesmEventSourceArn :: Lens' LambdaEventSourceMapping (Val Text)
lesmEventSourceArn = lens _lambdaEventSourceMappingEventSourceArn (\s a -> s { _lambdaEventSourceMappingEventSourceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-functionname
lesmFunctionName :: Lens' LambdaEventSourceMapping (Val Text)
lesmFunctionName = lens _lambdaEventSourceMappingFunctionName (\s a -> s { _lambdaEventSourceMappingFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-startingposition
lesmStartingPosition :: Lens' LambdaEventSourceMapping (Maybe (Val Text))
lesmStartingPosition = lens _lambdaEventSourceMappingStartingPosition (\s a -> s { _lambdaEventSourceMappingStartingPosition = a })
