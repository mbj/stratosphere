{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-destinationconfig.html

module Stratosphere.ResourceProperties.LambdaEventSourceMappingDestinationConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LambdaEventSourceMappingOnFailure

-- | Full data type definition for LambdaEventSourceMappingDestinationConfig.
-- See 'lambdaEventSourceMappingDestinationConfig' for a more convenient
-- constructor.
data LambdaEventSourceMappingDestinationConfig =
  LambdaEventSourceMappingDestinationConfig
  { _lambdaEventSourceMappingDestinationConfigOnFailure :: Maybe LambdaEventSourceMappingOnFailure
  } deriving (Show, Eq)

instance ToJSON LambdaEventSourceMappingDestinationConfig where
  toJSON LambdaEventSourceMappingDestinationConfig{..} =
    object $
    catMaybes
    [ fmap (("OnFailure",) . toJSON) _lambdaEventSourceMappingDestinationConfigOnFailure
    ]

-- | Constructor for 'LambdaEventSourceMappingDestinationConfig' containing
-- required fields as arguments.
lambdaEventSourceMappingDestinationConfig
  :: LambdaEventSourceMappingDestinationConfig
lambdaEventSourceMappingDestinationConfig  =
  LambdaEventSourceMappingDestinationConfig
  { _lambdaEventSourceMappingDestinationConfigOnFailure = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-destinationconfig.html#cfn-lambda-eventsourcemapping-destinationconfig-onfailure
lesmdcOnFailure :: Lens' LambdaEventSourceMappingDestinationConfig (Maybe LambdaEventSourceMappingOnFailure)
lesmdcOnFailure = lens _lambdaEventSourceMappingDestinationConfigOnFailure (\s a -> s { _lambdaEventSourceMappingDestinationConfigOnFailure = a })
