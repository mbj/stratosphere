{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-onfailure.html

module Stratosphere.ResourceProperties.LambdaEventSourceMappingOnFailure where

import Stratosphere.ResourceImports


-- | Full data type definition for LambdaEventSourceMappingOnFailure. See
-- 'lambdaEventSourceMappingOnFailure' for a more convenient constructor.
data LambdaEventSourceMappingOnFailure =
  LambdaEventSourceMappingOnFailure
  { _lambdaEventSourceMappingOnFailureDestination :: Val Text
  } deriving (Show, Eq)

instance ToJSON LambdaEventSourceMappingOnFailure where
  toJSON LambdaEventSourceMappingOnFailure{..} =
    object $
    catMaybes
    [ (Just . ("Destination",) . toJSON) _lambdaEventSourceMappingOnFailureDestination
    ]

-- | Constructor for 'LambdaEventSourceMappingOnFailure' containing required
-- fields as arguments.
lambdaEventSourceMappingOnFailure
  :: Val Text -- ^ 'lesmofDestination'
  -> LambdaEventSourceMappingOnFailure
lambdaEventSourceMappingOnFailure destinationarg =
  LambdaEventSourceMappingOnFailure
  { _lambdaEventSourceMappingOnFailureDestination = destinationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventsourcemapping-onfailure.html#cfn-lambda-eventsourcemapping-onfailure-destination
lesmofDestination :: Lens' LambdaEventSourceMappingOnFailure (Val Text)
lesmofDestination = lens _lambdaEventSourceMappingOnFailureDestination (\s a -> s { _lambdaEventSourceMappingOnFailureDestination = a })
