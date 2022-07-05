{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html

module Stratosphere.Resources.LambdaLayerVersion where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.LambdaLayerVersionContent

-- | Full data type definition for LambdaLayerVersion. See
-- 'lambdaLayerVersion' for a more convenient constructor.
data LambdaLayerVersion =
  LambdaLayerVersion
  { _lambdaLayerVersionCompatibleRuntimes :: Maybe (ValList Text)
  , _lambdaLayerVersionContent :: LambdaLayerVersionContent
  , _lambdaLayerVersionDescription :: Maybe (Val Text)
  , _lambdaLayerVersionLayerName :: Maybe (Val Text)
  , _lambdaLayerVersionLicenseInfo :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties LambdaLayerVersion where
  toResourceProperties LambdaLayerVersion{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Lambda::LayerVersion"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CompatibleRuntimes",) . toJSON) _lambdaLayerVersionCompatibleRuntimes
        , (Just . ("Content",) . toJSON) _lambdaLayerVersionContent
        , fmap (("Description",) . toJSON) _lambdaLayerVersionDescription
        , fmap (("LayerName",) . toJSON) _lambdaLayerVersionLayerName
        , fmap (("LicenseInfo",) . toJSON) _lambdaLayerVersionLicenseInfo
        ]
    }

-- | Constructor for 'LambdaLayerVersion' containing required fields as
-- arguments.
lambdaLayerVersion
  :: LambdaLayerVersionContent -- ^ 'llvContent'
  -> LambdaLayerVersion
lambdaLayerVersion contentarg =
  LambdaLayerVersion
  { _lambdaLayerVersionCompatibleRuntimes = Nothing
  , _lambdaLayerVersionContent = contentarg
  , _lambdaLayerVersionDescription = Nothing
  , _lambdaLayerVersionLayerName = Nothing
  , _lambdaLayerVersionLicenseInfo = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-compatibleruntimes
llvCompatibleRuntimes :: Lens' LambdaLayerVersion (Maybe (ValList Text))
llvCompatibleRuntimes = lens _lambdaLayerVersionCompatibleRuntimes (\s a -> s { _lambdaLayerVersionCompatibleRuntimes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-content
llvContent :: Lens' LambdaLayerVersion LambdaLayerVersionContent
llvContent = lens _lambdaLayerVersionContent (\s a -> s { _lambdaLayerVersionContent = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-description
llvDescription :: Lens' LambdaLayerVersion (Maybe (Val Text))
llvDescription = lens _lambdaLayerVersionDescription (\s a -> s { _lambdaLayerVersionDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-layername
llvLayerName :: Lens' LambdaLayerVersion (Maybe (Val Text))
llvLayerName = lens _lambdaLayerVersionLayerName (\s a -> s { _lambdaLayerVersionLayerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-layerversion.html#cfn-lambda-layerversion-licenseinfo
llvLicenseInfo :: Lens' LambdaLayerVersion (Maybe (Val Text))
llvLicenseInfo = lens _lambdaLayerVersionLicenseInfo (\s a -> s { _lambdaLayerVersionLicenseInfo = a })
