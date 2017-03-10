{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html

module Stratosphere.Resources.LambdaEventSourceMapping where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for LambdaEventSourceMapping. See
-- 'lambdaEventSourceMapping' for a more convenient constructor.
data LambdaEventSourceMapping =
  LambdaEventSourceMapping
  { _lambdaEventSourceMappingBatchSize :: Maybe (Val Integer')
  , _lambdaEventSourceMappingEnabled :: Maybe (Val Bool')
  , _lambdaEventSourceMappingEventSourceArn :: Val Text
  , _lambdaEventSourceMappingFunctionName :: Val Text
  , _lambdaEventSourceMappingStartingPosition :: Val Text
  } deriving (Show, Eq)

instance ToJSON LambdaEventSourceMapping where
  toJSON LambdaEventSourceMapping{..} =
    object $
    catMaybes
    [ ("BatchSize" .=) <$> _lambdaEventSourceMappingBatchSize
    , ("Enabled" .=) <$> _lambdaEventSourceMappingEnabled
    , Just ("EventSourceArn" .= _lambdaEventSourceMappingEventSourceArn)
    , Just ("FunctionName" .= _lambdaEventSourceMappingFunctionName)
    , Just ("StartingPosition" .= _lambdaEventSourceMappingStartingPosition)
    ]

instance FromJSON LambdaEventSourceMapping where
  parseJSON (Object obj) =
    LambdaEventSourceMapping <$>
      obj .:? "BatchSize" <*>
      obj .:? "Enabled" <*>
      obj .: "EventSourceArn" <*>
      obj .: "FunctionName" <*>
      obj .: "StartingPosition"
  parseJSON _ = mempty

-- | Constructor for 'LambdaEventSourceMapping' containing required fields as
-- arguments.
lambdaEventSourceMapping
  :: Val Text -- ^ 'lesmEventSourceArn'
  -> Val Text -- ^ 'lesmFunctionName'
  -> Val Text -- ^ 'lesmStartingPosition'
  -> LambdaEventSourceMapping
lambdaEventSourceMapping eventSourceArnarg functionNamearg startingPositionarg =
  LambdaEventSourceMapping
  { _lambdaEventSourceMappingBatchSize = Nothing
  , _lambdaEventSourceMappingEnabled = Nothing
  , _lambdaEventSourceMappingEventSourceArn = eventSourceArnarg
  , _lambdaEventSourceMappingFunctionName = functionNamearg
  , _lambdaEventSourceMappingStartingPosition = startingPositionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-batchsize
lesmBatchSize :: Lens' LambdaEventSourceMapping (Maybe (Val Integer'))
lesmBatchSize = lens _lambdaEventSourceMappingBatchSize (\s a -> s { _lambdaEventSourceMappingBatchSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-enabled
lesmEnabled :: Lens' LambdaEventSourceMapping (Maybe (Val Bool'))
lesmEnabled = lens _lambdaEventSourceMappingEnabled (\s a -> s { _lambdaEventSourceMappingEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-eventsourcearn
lesmEventSourceArn :: Lens' LambdaEventSourceMapping (Val Text)
lesmEventSourceArn = lens _lambdaEventSourceMappingEventSourceArn (\s a -> s { _lambdaEventSourceMappingEventSourceArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-functionname
lesmFunctionName :: Lens' LambdaEventSourceMapping (Val Text)
lesmFunctionName = lens _lambdaEventSourceMappingFunctionName (\s a -> s { _lambdaEventSourceMappingFunctionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html#cfn-lambda-eventsourcemapping-startingposition
lesmStartingPosition :: Lens' LambdaEventSourceMapping (Val Text)
lesmStartingPosition = lens _lambdaEventSourceMappingStartingPosition (\s a -> s { _lambdaEventSourceMappingStartingPosition = a })
