{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::Lambda::Version resource publishes a specified version of an AWS
-- Lambda (Lambda) function. When publishing a new version of your function,
-- Lambda copies the latest version of your function. For more information,
-- see Introduction to AWS Lambda Versioning in the AWS Lambda Developer
-- Guide.

module Stratosphere.Resources.LambdaVersion where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaVersion. See 'lambdaVersion' for a
-- more convenient constructor.
data LambdaVersion =
  LambdaVersion
  { _lambdaVersionCodeSha256 :: Maybe (Val Text)
  , _lambdaVersionDescription :: Maybe (Val Text)
  , _lambdaVersionFunctionName :: Val Text
  } deriving (Show, Generic)

instance ToJSON LambdaVersion where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

instance FromJSON LambdaVersion where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 14, omitNothingFields = True }

-- | Constructor for 'LambdaVersion' containing required fields as arguments.
lambdaVersion
  :: Val Text -- ^ 'lvFunctionName'
  -> LambdaVersion
lambdaVersion functionNamearg =
  LambdaVersion
  { _lambdaVersionCodeSha256 = Nothing
  , _lambdaVersionDescription = Nothing
  , _lambdaVersionFunctionName = functionNamearg
  }

-- | The SHA-256 hash of the deployment package that you want to publish. This
-- value must match the SHA-256 hash of the $LATEST version of the function.
-- Specify this property to validate that you are publishing the correct
-- package.
lvCodeSha256 :: Lens' LambdaVersion (Maybe (Val Text))
lvCodeSha256 = lens _lambdaVersionCodeSha256 (\s a -> s { _lambdaVersionCodeSha256 = a })

-- | A description of the version you are publishing. If you don't specify a
-- value, Lambda copies the description from the $LATEST version of the
-- function.
lvDescription :: Lens' LambdaVersion (Maybe (Val Text))
lvDescription = lens _lambdaVersionDescription (\s a -> s { _lambdaVersionDescription = a })

-- | The Lambda function for which you want to publish a version. You can
-- specify the function's name or its Amazon Resource Name (ARN).
lvFunctionName :: Lens' LambdaVersion (Val Text)
lvFunctionName = lens _lambdaVersionFunctionName (\s a -> s { _lambdaVersionFunctionName = a })