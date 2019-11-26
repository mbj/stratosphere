{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html

module Stratosphere.ResourceProperties.LambdaEventInvokeConfigDestinationConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LambdaEventInvokeConfigOnFailure
import Stratosphere.ResourceProperties.LambdaEventInvokeConfigOnSuccess

-- | Full data type definition for LambdaEventInvokeConfigDestinationConfig.
-- See 'lambdaEventInvokeConfigDestinationConfig' for a more convenient
-- constructor.
data LambdaEventInvokeConfigDestinationConfig =
  LambdaEventInvokeConfigDestinationConfig
  { _lambdaEventInvokeConfigDestinationConfigOnFailure :: Maybe LambdaEventInvokeConfigOnFailure
  , _lambdaEventInvokeConfigDestinationConfigOnSuccess :: Maybe LambdaEventInvokeConfigOnSuccess
  } deriving (Show, Eq)

instance ToJSON LambdaEventInvokeConfigDestinationConfig where
  toJSON LambdaEventInvokeConfigDestinationConfig{..} =
    object $
    catMaybes
    [ fmap (("OnFailure",) . toJSON) _lambdaEventInvokeConfigDestinationConfigOnFailure
    , fmap (("OnSuccess",) . toJSON) _lambdaEventInvokeConfigDestinationConfigOnSuccess
    ]

-- | Constructor for 'LambdaEventInvokeConfigDestinationConfig' containing
-- required fields as arguments.
lambdaEventInvokeConfigDestinationConfig
  :: LambdaEventInvokeConfigDestinationConfig
lambdaEventInvokeConfigDestinationConfig  =
  LambdaEventInvokeConfigDestinationConfig
  { _lambdaEventInvokeConfigDestinationConfigOnFailure = Nothing
  , _lambdaEventInvokeConfigDestinationConfigOnSuccess = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig-onfailure
leicdcOnFailure :: Lens' LambdaEventInvokeConfigDestinationConfig (Maybe LambdaEventInvokeConfigOnFailure)
leicdcOnFailure = lens _lambdaEventInvokeConfigDestinationConfigOnFailure (\s a -> s { _lambdaEventInvokeConfigDestinationConfigOnFailure = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig.html#cfn-lambda-eventinvokeconfig-destinationconfig-onsuccess
leicdcOnSuccess :: Lens' LambdaEventInvokeConfigDestinationConfig (Maybe LambdaEventInvokeConfigOnSuccess)
leicdcOnSuccess = lens _lambdaEventInvokeConfigDestinationConfigOnSuccess (\s a -> s { _lambdaEventInvokeConfigDestinationConfigOnSuccess = a })
