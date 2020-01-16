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
  { _lambdaEventSourceMappingDestinationConfigOnFailure :: LambdaEventSourceMappingOnFailure
  } deriving (Show, Eq)

instance ToJSON LambdaEventSourceMappingDestinationConfig where
  toJSON LambdaEventSourceMappingDestinationConfig{..} =
    object $
    catMaybes
    [ (Just . ("OnFailure",) . toJSON) _lambdaEventSourceMappingDestinationConfigOnFailure
    ]

-- | Constructor for 'LambdaEventSourceMappingDestinationConfig' containing
-- required fields as arguments.
lambdaEventSourceMappingDestinationConfig
  :: LambdaEventSourceMappingOnFailure -- ^ 'lesmdcOnFailure'
  -> LambdaEventSourceMappingDestinationConfig
lambdaEventSourceMappingDestinationConfig onFailurearg =
  LambdaEventSourceMappingDestinationConfig
  { _lambdaEventSourceMappingDestinationConfigOnFailure = onFailurearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-destinationconfig.html#cfn-lambda-eventsourcemapping-destinationconfig-onfailure
lesmdcOnFailure :: Lens' LambdaEventSourceMappingDestinationConfig LambdaEventSourceMappingOnFailure
lesmdcOnFailure = lens _lambdaEventSourceMappingDestinationConfigOnFailure (\s a -> s { _lambdaEventSourceMappingDestinationConfigOnFailure = a })
