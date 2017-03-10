{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-environment.html

module Stratosphere.ResourceProperties.LambdaFunctionEnvironment where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


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
    [ ("Variables" .=) <$> _lambdaFunctionEnvironmentVariables
    ]

instance FromJSON LambdaFunctionEnvironment where
  parseJSON (Object obj) =
    LambdaFunctionEnvironment <$>
      obj .:? "Variables"
  parseJSON _ = mempty

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
