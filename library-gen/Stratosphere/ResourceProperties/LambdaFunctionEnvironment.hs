{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-environment.html

module Stratosphere.ResourceProperties.LambdaFunctionEnvironment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaFunctionEnvironment. See
-- | 'lambdaFunctionEnvironment' for a more convenient constructor.
data LambdaFunctionEnvironment =
  LambdaFunctionEnvironment
  { _lambdaFunctionEnvironmentVariables :: Maybe Object
  } deriving (Show, Generic)

instance ToJSON LambdaFunctionEnvironment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON LambdaFunctionEnvironment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'LambdaFunctionEnvironment' containing required fields as
-- | arguments.
lambdaFunctionEnvironment
  :: LambdaFunctionEnvironment
lambdaFunctionEnvironment  =
  LambdaFunctionEnvironment
  { _lambdaFunctionEnvironmentVariables = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-environment.html#cfn-lambda-function-environment-variables
lfeVariables :: Lens' LambdaFunctionEnvironment (Maybe Object)
lfeVariables = lens _lambdaFunctionEnvironmentVariables (\s a -> s { _lambdaFunctionEnvironmentVariables = a })
