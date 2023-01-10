
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html

module Stratosphere.ResourceProperties.LambdaFunctionDeadLetterConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for LambdaFunctionDeadLetterConfig. See
-- 'lambdaFunctionDeadLetterConfig' for a more convenient constructor.
data LambdaFunctionDeadLetterConfig =
  LambdaFunctionDeadLetterConfig
  { _lambdaFunctionDeadLetterConfigTargetArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON LambdaFunctionDeadLetterConfig where
  toJSON LambdaFunctionDeadLetterConfig{..} =
    object $
    catMaybes
    [ fmap (("TargetArn",) . toJSON) _lambdaFunctionDeadLetterConfigTargetArn
    ]

-- | Constructor for 'LambdaFunctionDeadLetterConfig' containing required
-- fields as arguments.
lambdaFunctionDeadLetterConfig
  :: LambdaFunctionDeadLetterConfig
lambdaFunctionDeadLetterConfig  =
  LambdaFunctionDeadLetterConfig
  { _lambdaFunctionDeadLetterConfigTargetArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-deadletterconfig.html#cfn-lambda-function-deadletterconfig-targetarn
lfdlcTargetArn :: Lens' LambdaFunctionDeadLetterConfig (Maybe (Val Text))
lfdlcTargetArn = lens _lambdaFunctionDeadLetterConfigTargetArn (\s a -> s { _lambdaFunctionDeadLetterConfigTargetArn = a })
