{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html

module Stratosphere.Resources.LambdaVersion where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for LambdaVersion. See 'lambdaVersion' for a
-- more convenient constructor.
data LambdaVersion =
  LambdaVersion
  { _lambdaVersionCodeSha256 :: Maybe (Val Text)
  , _lambdaVersionDescription :: Maybe (Val Text)
  , _lambdaVersionFunctionName :: Val Text
  } deriving (Show, Eq)

instance ToJSON LambdaVersion where
  toJSON LambdaVersion{..} =
    object $
    catMaybes
    [ ("CodeSha256" .=) <$> _lambdaVersionCodeSha256
    , ("Description" .=) <$> _lambdaVersionDescription
    , Just ("FunctionName" .= _lambdaVersionFunctionName)
    ]

instance FromJSON LambdaVersion where
  parseJSON (Object obj) =
    LambdaVersion <$>
      obj .:? "CodeSha256" <*>
      obj .:? "Description" <*>
      obj .: "FunctionName"
  parseJSON _ = mempty

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
