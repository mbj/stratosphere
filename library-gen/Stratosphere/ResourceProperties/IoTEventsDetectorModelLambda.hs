{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-lambda.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelLambda where

import Stratosphere.ResourceImports


-- | Full data type definition for IoTEventsDetectorModelLambda. See
-- 'ioTEventsDetectorModelLambda' for a more convenient constructor.
data IoTEventsDetectorModelLambda =
  IoTEventsDetectorModelLambda
  { _ioTEventsDetectorModelLambdaFunctionArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelLambda where
  toJSON IoTEventsDetectorModelLambda{..} =
    object $
    catMaybes
    [ fmap (("FunctionArn",) . toJSON) _ioTEventsDetectorModelLambdaFunctionArn
    ]

-- | Constructor for 'IoTEventsDetectorModelLambda' containing required fields
-- as arguments.
ioTEventsDetectorModelLambda
  :: IoTEventsDetectorModelLambda
ioTEventsDetectorModelLambda  =
  IoTEventsDetectorModelLambda
  { _ioTEventsDetectorModelLambdaFunctionArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-lambda.html#cfn-iotevents-detectormodel-lambda-functionarn
itedmlFunctionArn :: Lens' IoTEventsDetectorModelLambda (Maybe (Val Text))
itedmlFunctionArn = lens _ioTEventsDetectorModelLambdaFunctionArn (\s a -> s { _ioTEventsDetectorModelLambdaFunctionArn = a })
