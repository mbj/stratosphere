{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Code is a property of the AWS::Lambda::Function resource that enables you
-- to specify the source code of an AWS Lambda (Lambda) function. Source code
-- can be located in a file in an S3 bucket. For nodejs, nodejs4.3, and
-- python2.7 runtime environments only, you can provide source code as inline
-- text.

module Stratosphere.ResourceProperties.LambdaFunctionCode where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaFunctionCode. See
-- 'lambdaFunctionCode' for a more convenient constructor.
data LambdaFunctionCode =
  LambdaFunctionCode
  { _lambdaFunctionCodeS3Bucket :: Maybe (Val Text)
  , _lambdaFunctionCodeS3Key :: Maybe (Val Text)
  , _lambdaFunctionCodeS3ObjectVersion :: Maybe (Val Text)
  , _lambdaFunctionCodeZipFile :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON LambdaFunctionCode where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON LambdaFunctionCode where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'LambdaFunctionCode' containing required fields as
-- arguments.
lambdaFunctionCode
  :: LambdaFunctionCode
lambdaFunctionCode  =
  LambdaFunctionCode
  { _lambdaFunctionCodeS3Bucket = Nothing
  , _lambdaFunctionCodeS3Key = Nothing
  , _lambdaFunctionCodeS3ObjectVersion = Nothing
  , _lambdaFunctionCodeZipFile = Nothing
  }

-- | The name of the S3 bucket that contains the source code of your Lambda
-- function. The S3 bucket must be in the same region as the stack. Note The
-- cfn-response module isn't available for source code stored in S3 buckets.
-- You must write your own functions to send responses.
lfcS3Bucket :: Lens' LambdaFunctionCode (Maybe (Val Text))
lfcS3Bucket = lens _lambdaFunctionCodeS3Bucket (\s a -> s { _lambdaFunctionCodeS3Bucket = a })

-- | The location and name of the .zip file that contains your source code. If
-- you specify this property, you must also specify the S3Bucket property.
lfcS3Key :: Lens' LambdaFunctionCode (Maybe (Val Text))
lfcS3Key = lens _lambdaFunctionCodeS3Key (\s a -> s { _lambdaFunctionCodeS3Key = a })

-- | If you have S3 versioning enabled, the version ID of the.zip file that
-- contains your source code. You can specify this property only if you
-- specify the S3Bucket and S3Key properties.
lfcS3ObjectVersion :: Lens' LambdaFunctionCode (Maybe (Val Text))
lfcS3ObjectVersion = lens _lambdaFunctionCodeS3ObjectVersion (\s a -> s { _lambdaFunctionCodeS3ObjectVersion = a })

-- | For nodejs, nodejs4.3, and python2.7 runtime environments, the source
-- code of your Lambda function. You can't use this property with other
-- runtime environments. You can specify up to 4096 characters. You must
-- precede certain special characters in your source code, such as quotation
-- marks ("), newlines (\n), and tabs (\t), with a backslash (\). For a list
-- of special characters, see http://json.org/. If you specify a function that
-- interacts with an AWS CloudFormation custom resource, you don't have to
-- write your own functions to send responses to the custom resource that
-- invoked the function. AWS CloudFormation provides a response module that
-- simplifies sending responses. For more information, see cfn-response
-- Module.
lfcZipFile :: Lens' LambdaFunctionCode (Maybe (Val Text))
lfcZipFile = lens _lambdaFunctionCodeZipFile (\s a -> s { _lambdaFunctionCodeZipFile = a })