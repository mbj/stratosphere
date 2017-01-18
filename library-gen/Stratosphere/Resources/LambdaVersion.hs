{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html

module Stratosphere.Resources.LambdaVersion where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for LambdaVersion. See 'lambdaVersion' for a
-- | more convenient constructor.
data LambdaVersion =
  LambdaVersion
  { _lambdaVersionCodeSha256 :: Maybe (Val Text)
  , _lambdaVersionDescription :: Maybe (Val Text)
  , _lambdaVersionFunctionName :: Val Text
  } deriving (Show, Eq, Generic)

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-codesha256
lvCodeSha256 :: Lens' LambdaVersion (Maybe (Val Text))
lvCodeSha256 = lens _lambdaVersionCodeSha256 (\s a -> s { _lambdaVersionCodeSha256 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-description
lvDescription :: Lens' LambdaVersion (Maybe (Val Text))
lvDescription = lens _lambdaVersionDescription (\s a -> s { _lambdaVersionDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-functionname
lvFunctionName :: Lens' LambdaVersion (Val Text)
lvFunctionName = lens _lambdaVersionFunctionName (\s a -> s { _lambdaVersionFunctionName = a })
