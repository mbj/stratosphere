{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html

module Stratosphere.Resources.LambdaEventSourceMapping where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaEventSourceMapping. See
-- | 'lambdaEventSourceMapping' for a more convenient constructor.
data LambdaEventSourceMapping =
  LambdaEventSourceMapping
  { _lambdaEventSourceMappingBatchSize :: Maybe (Val Integer')
  , _lambdaEventSourceMappingEnabled :: Maybe (Val Bool')
  , _lambdaEventSourceMappingEventSourceArn :: Val Text
  , _lambdaEventSourceMappingFunctionName :: Val Text
  , _lambdaEventSourceMappingStartingPosition :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON LambdaEventSourceMapping where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON LambdaEventSourceMapping where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'LambdaEventSourceMapping' containing required fields as
-- | arguments.
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
