
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-lambda.html

module Stratosphere.ResourceProperties.IoTEventsDetectorModelLambda where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.IoTEventsDetectorModelPayload

-- | Full data type definition for IoTEventsDetectorModelLambda. See
-- 'ioTEventsDetectorModelLambda' for a more convenient constructor.
data IoTEventsDetectorModelLambda =
  IoTEventsDetectorModelLambda
  { _ioTEventsDetectorModelLambdaFunctionArn :: Maybe (Val Text)
  , _ioTEventsDetectorModelLambdaPayload :: Maybe IoTEventsDetectorModelPayload
  } deriving (Show, Eq)

instance ToJSON IoTEventsDetectorModelLambda where
  toJSON IoTEventsDetectorModelLambda{..} =
    object $
    catMaybes
    [ fmap (("FunctionArn",) . toJSON) _ioTEventsDetectorModelLambdaFunctionArn
    , fmap (("Payload",) . toJSON) _ioTEventsDetectorModelLambdaPayload
    ]

-- | Constructor for 'IoTEventsDetectorModelLambda' containing required fields
-- as arguments.
ioTEventsDetectorModelLambda
  :: IoTEventsDetectorModelLambda
ioTEventsDetectorModelLambda  =
  IoTEventsDetectorModelLambda
  { _ioTEventsDetectorModelLambdaFunctionArn = Nothing
  , _ioTEventsDetectorModelLambdaPayload = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-lambda.html#cfn-iotevents-detectormodel-lambda-functionarn
itedmlFunctionArn :: Lens' IoTEventsDetectorModelLambda (Maybe (Val Text))
itedmlFunctionArn = lens _ioTEventsDetectorModelLambdaFunctionArn (\s a -> s { _ioTEventsDetectorModelLambdaFunctionArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-detectormodel-lambda.html#cfn-iotevents-detectormodel-lambda-payload
itedmlPayload :: Lens' IoTEventsDetectorModelLambda (Maybe IoTEventsDetectorModelPayload)
itedmlPayload = lens _ioTEventsDetectorModelLambdaPayload (\s a -> s { _ioTEventsDetectorModelLambdaPayload = a })
