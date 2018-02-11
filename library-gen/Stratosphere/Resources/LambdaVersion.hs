{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html

module Stratosphere.Resources.LambdaVersion where

import Stratosphere.ResourceImports


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
    [ fmap (("CodeSha256",) . toJSON) _lambdaVersionCodeSha256
    , fmap (("Description",) . toJSON) _lambdaVersionDescription
    , (Just . ("FunctionName",) . toJSON) _lambdaVersionFunctionName
    ]

instance FromJSON LambdaVersion where
  parseJSON (Object obj) =
    LambdaVersion <$>
      (obj .:? "CodeSha256") <*>
      (obj .:? "Description") <*>
      (obj .: "FunctionName")
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
