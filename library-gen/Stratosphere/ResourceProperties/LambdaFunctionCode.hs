{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html

module Stratosphere.ResourceProperties.LambdaFunctionCode where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaFunctionCode. See
-- | 'lambdaFunctionCode' for a more convenient constructor.
data LambdaFunctionCode =
  LambdaFunctionCode
  { _lambdaFunctionCodeS3Bucket :: Maybe (Val Text)
  , _lambdaFunctionCodeS3Key :: Maybe (Val Text)
  , _lambdaFunctionCodeS3ObjectVersion :: Maybe (Val Text)
  , _lambdaFunctionCodeZipFile :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON LambdaFunctionCode where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON LambdaFunctionCode where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'LambdaFunctionCode' containing required fields as
-- | arguments.
lambdaFunctionCode
  :: LambdaFunctionCode
lambdaFunctionCode  =
  LambdaFunctionCode
  { _lambdaFunctionCodeS3Bucket = Nothing
  , _lambdaFunctionCodeS3Key = Nothing
  , _lambdaFunctionCodeS3ObjectVersion = Nothing
  , _lambdaFunctionCodeZipFile = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3bucket
lfcS3Bucket :: Lens' LambdaFunctionCode (Maybe (Val Text))
lfcS3Bucket = lens _lambdaFunctionCodeS3Bucket (\s a -> s { _lambdaFunctionCodeS3Bucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3key
lfcS3Key :: Lens' LambdaFunctionCode (Maybe (Val Text))
lfcS3Key = lens _lambdaFunctionCodeS3Key (\s a -> s { _lambdaFunctionCodeS3Key = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-s3objectversion
lfcS3ObjectVersion :: Lens' LambdaFunctionCode (Maybe (Val Text))
lfcS3ObjectVersion = lens _lambdaFunctionCodeS3ObjectVersion (\s a -> s { _lambdaFunctionCodeS3ObjectVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lambda-function-code.html#cfn-lambda-function-code-zipfile
lfcZipFile :: Lens' LambdaFunctionCode (Maybe (Val Text))
lfcZipFile = lens _lambdaFunctionCodeZipFile (\s a -> s { _lambdaFunctionCodeZipFile = a })
