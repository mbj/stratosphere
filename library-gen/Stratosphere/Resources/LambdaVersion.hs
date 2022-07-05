{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html

module Stratosphere.Resources.LambdaVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LambdaVersionProvisionedConcurrencyConfiguration

-- | Full data type definition for LambdaVersion. See 'lambdaVersion' for a
-- more convenient constructor.
data LambdaVersion =
  LambdaVersion
  { _lambdaVersionCodeSha256 :: Maybe (Val Text)
  , _lambdaVersionDescription :: Maybe (Val Text)
  , _lambdaVersionFunctionName :: Val Text
  , _lambdaVersionProvisionedConcurrencyConfig :: Maybe LambdaVersionProvisionedConcurrencyConfiguration
  } deriving (Show, Eq)

instance ToResourceProperties LambdaVersion where
  toResourceProperties LambdaVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Lambda::Version"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CodeSha256",) . toJSON) _lambdaVersionCodeSha256
        , fmap (("Description",) . toJSON) _lambdaVersionDescription
        , (Just . ("FunctionName",) . toJSON) _lambdaVersionFunctionName
        , fmap (("ProvisionedConcurrencyConfig",) . toJSON) _lambdaVersionProvisionedConcurrencyConfig
        ]
    }

-- | Constructor for 'LambdaVersion' containing required fields as arguments.
lambdaVersion
  :: Val Text -- ^ 'lvFunctionName'
  -> LambdaVersion
lambdaVersion functionNamearg =
  LambdaVersion
  { _lambdaVersionCodeSha256 = Nothing
  , _lambdaVersionDescription = Nothing
  , _lambdaVersionFunctionName = functionNamearg
  , _lambdaVersionProvisionedConcurrencyConfig = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-version.html#cfn-lambda-version-provisionedconcurrencyconfig
lvProvisionedConcurrencyConfig :: Lens' LambdaVersion (Maybe LambdaVersionProvisionedConcurrencyConfiguration)
lvProvisionedConcurrencyConfig = lens _lambdaVersionProvisionedConcurrencyConfig (\s a -> s { _lambdaVersionProvisionedConcurrencyConfig = a })
