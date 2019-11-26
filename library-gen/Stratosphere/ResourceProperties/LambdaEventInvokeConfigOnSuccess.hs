{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig-onsuccess.html

module Stratosphere.ResourceProperties.LambdaEventInvokeConfigOnSuccess where

import Stratosphere.ResourceImports


-- | Full data type definition for LambdaEventInvokeConfigOnSuccess. See
-- 'lambdaEventInvokeConfigOnSuccess' for a more convenient constructor.
data LambdaEventInvokeConfigOnSuccess =
  LambdaEventInvokeConfigOnSuccess
  { _lambdaEventInvokeConfigOnSuccessDestination :: Val Text
  } deriving (Show, Eq)

instance ToJSON LambdaEventInvokeConfigOnSuccess where
  toJSON LambdaEventInvokeConfigOnSuccess{..} =
    object $
    catMaybes
    [ (Just . ("Destination",) . toJSON) _lambdaEventInvokeConfigOnSuccessDestination
    ]

-- | Constructor for 'LambdaEventInvokeConfigOnSuccess' containing required
-- fields as arguments.
lambdaEventInvokeConfigOnSuccess
  :: Val Text -- ^ 'leicosDestination'
  -> LambdaEventInvokeConfigOnSuccess
lambdaEventInvokeConfigOnSuccess destinationarg =
  LambdaEventInvokeConfigOnSuccess
  { _lambdaEventInvokeConfigOnSuccessDestination = destinationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig-onsuccess.html#cfn-lambda-eventinvokeconfig-destinationconfig-onsuccess-destination
leicosDestination :: Lens' LambdaEventInvokeConfigOnSuccess (Val Text)
leicosDestination = lens _lambdaEventInvokeConfigOnSuccessDestination (\s a -> s { _lambdaEventInvokeConfigOnSuccessDestination = a })
