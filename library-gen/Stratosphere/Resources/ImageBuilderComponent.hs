{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html

module Stratosphere.Resources.ImageBuilderComponent where

import Stratosphere.ResourceImports


-- | Full data type definition for ImageBuilderComponent. See
-- 'imageBuilderComponent' for a more convenient constructor.
data ImageBuilderComponent =
  ImageBuilderComponent
  { _imageBuilderComponentChangeDescription :: Maybe (Val Text)
  , _imageBuilderComponentData :: Maybe (Val Text)
  , _imageBuilderComponentDescription :: Maybe (Val Text)
  , _imageBuilderComponentKmsKeyId :: Maybe (Val Text)
  , _imageBuilderComponentName :: Val Text
  , _imageBuilderComponentPlatform :: Val Text
  , _imageBuilderComponentSupportedOsVersions :: Maybe (ValList Text)
  , _imageBuilderComponentTags :: Maybe Object
  , _imageBuilderComponentUri :: Maybe (Val Text)
  , _imageBuilderComponentVersion :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ImageBuilderComponent where
  toResourceProperties ImageBuilderComponent{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ImageBuilder::Component"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("ChangeDescription",) . toJSON) _imageBuilderComponentChangeDescription
        , fmap (("Data",) . toJSON) _imageBuilderComponentData
        , fmap (("Description",) . toJSON) _imageBuilderComponentDescription
        , fmap (("KmsKeyId",) . toJSON) _imageBuilderComponentKmsKeyId
        , (Just . ("Name",) . toJSON) _imageBuilderComponentName
        , (Just . ("Platform",) . toJSON) _imageBuilderComponentPlatform
        , fmap (("SupportedOsVersions",) . toJSON) _imageBuilderComponentSupportedOsVersions
        , fmap (("Tags",) . toJSON) _imageBuilderComponentTags
        , fmap (("Uri",) . toJSON) _imageBuilderComponentUri
        , (Just . ("Version",) . toJSON) _imageBuilderComponentVersion
        ]
    }

-- | Constructor for 'ImageBuilderComponent' containing required fields as
-- arguments.
imageBuilderComponent
  :: Val Text -- ^ 'ibcName'
  -> Val Text -- ^ 'ibcPlatform'
  -> Val Text -- ^ 'ibcVersion'
  -> ImageBuilderComponent
imageBuilderComponent namearg platformarg versionarg =
  ImageBuilderComponent
  { _imageBuilderComponentChangeDescription = Nothing
  , _imageBuilderComponentData = Nothing
  , _imageBuilderComponentDescription = Nothing
  , _imageBuilderComponentKmsKeyId = Nothing
  , _imageBuilderComponentName = namearg
  , _imageBuilderComponentPlatform = platformarg
  , _imageBuilderComponentSupportedOsVersions = Nothing
  , _imageBuilderComponentTags = Nothing
  , _imageBuilderComponentUri = Nothing
  , _imageBuilderComponentVersion = versionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-changedescription
ibcChangeDescription :: Lens' ImageBuilderComponent (Maybe (Val Text))
ibcChangeDescription = lens _imageBuilderComponentChangeDescription (\s a -> s { _imageBuilderComponentChangeDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-data
ibcData :: Lens' ImageBuilderComponent (Maybe (Val Text))
ibcData = lens _imageBuilderComponentData (\s a -> s { _imageBuilderComponentData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-description
ibcDescription :: Lens' ImageBuilderComponent (Maybe (Val Text))
ibcDescription = lens _imageBuilderComponentDescription (\s a -> s { _imageBuilderComponentDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-kmskeyid
ibcKmsKeyId :: Lens' ImageBuilderComponent (Maybe (Val Text))
ibcKmsKeyId = lens _imageBuilderComponentKmsKeyId (\s a -> s { _imageBuilderComponentKmsKeyId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-name
ibcName :: Lens' ImageBuilderComponent (Val Text)
ibcName = lens _imageBuilderComponentName (\s a -> s { _imageBuilderComponentName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-platform
ibcPlatform :: Lens' ImageBuilderComponent (Val Text)
ibcPlatform = lens _imageBuilderComponentPlatform (\s a -> s { _imageBuilderComponentPlatform = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-supportedosversions
ibcSupportedOsVersions :: Lens' ImageBuilderComponent (Maybe (ValList Text))
ibcSupportedOsVersions = lens _imageBuilderComponentSupportedOsVersions (\s a -> s { _imageBuilderComponentSupportedOsVersions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-tags
ibcTags :: Lens' ImageBuilderComponent (Maybe Object)
ibcTags = lens _imageBuilderComponentTags (\s a -> s { _imageBuilderComponentTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-uri
ibcUri :: Lens' ImageBuilderComponent (Maybe (Val Text))
ibcUri = lens _imageBuilderComponentUri (\s a -> s { _imageBuilderComponentUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-imagebuilder-component.html#cfn-imagebuilder-component-version
ibcVersion :: Lens' ImageBuilderComponent (Val Text)
ibcVersion = lens _imageBuilderComponentVersion (\s a -> s { _imageBuilderComponentVersion = a })
