{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-environment.html

module Stratosphere.ResourceProperties.LambdaFunctionEnvironment where

import Stratosphere.ResourceImports


-- | Full data type definition for LambdaFunctionEnvironment. See
-- 'lambdaFunctionEnvironment' for a more convenient constructor.
data LambdaFunctionEnvironment =
  LambdaFunctionEnvironment
  { _lambdaFunctionEnvironmentVariables :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON LambdaFunctionEnvironment where
  toJSON LambdaFunctionEnvironment{..} =
    object $
    catMaybes
    [ fmap (("Variables",) . toJSON) _lambdaFunctionEnvironmentVariables
    ]

-- | Constructor for 'LambdaFunctionEnvironment' containing required fields as
-- arguments.
lambdaFunctionEnvironment
  :: LambdaFunctionEnvironment
lambdaFunctionEnvironment  =
  LambdaFunctionEnvironment
  { _lambdaFunctionEnvironmentVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-environment.html#cfn-lambda-function-environment-variables
lfeVariables :: Lens' LambdaFunctionEnvironment (Maybe Object)
lfeVariables = lens _lambdaFunctionEnvironmentVariables (\s a -> s { _lambdaFunctionEnvironmentVariables = a })
