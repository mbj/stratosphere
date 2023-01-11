
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig-onfailure.html

module Stratosphere.ResourceProperties.LambdaEventInvokeConfigOnFailure where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for LambdaEventInvokeConfigOnFailure. See
-- 'lambdaEventInvokeConfigOnFailure' for a more convenient constructor.
data LambdaEventInvokeConfigOnFailure =
  LambdaEventInvokeConfigOnFailure
  { _lambdaEventInvokeConfigOnFailureDestination :: Val Text
  } deriving (Show, Eq)

instance ToJSON LambdaEventInvokeConfigOnFailure where
  toJSON LambdaEventInvokeConfigOnFailure{..} =
    object $
    catMaybes
    [ (Just . ("Destination",) . toJSON) _lambdaEventInvokeConfigOnFailureDestination
    ]

-- | Constructor for 'LambdaEventInvokeConfigOnFailure' containing required
-- fields as arguments.
lambdaEventInvokeConfigOnFailure
  :: Val Text -- ^ 'leicofDestination'
  -> LambdaEventInvokeConfigOnFailure
lambdaEventInvokeConfigOnFailure destinationarg =
  LambdaEventInvokeConfigOnFailure
  { _lambdaEventInvokeConfigOnFailureDestination = destinationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-eventinvokeconfig-destinationconfig-onfailure.html#cfn-lambda-eventinvokeconfig-destinationconfig-onfailure-destination
leicofDestination :: Lens' LambdaEventInvokeConfigOnFailure (Val Text)
leicofDestination = lens _lambdaEventInvokeConfigOnFailureDestination (\s a -> s { _lambdaEventInvokeConfigOnFailureDestination = a })
