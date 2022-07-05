{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html

module Stratosphere.Resources.GreengrassDeviceDefinition where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassDeviceDefinitionDeviceDefinitionVersion

-- | Full data type definition for GreengrassDeviceDefinition. See
-- 'greengrassDeviceDefinition' for a more convenient constructor.
data GreengrassDeviceDefinition =
  GreengrassDeviceDefinition
  { _greengrassDeviceDefinitionInitialVersion :: Maybe GreengrassDeviceDefinitionDeviceDefinitionVersion
  , _greengrassDeviceDefinitionName :: Val Text
  , _greengrassDeviceDefinitionTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassDeviceDefinition where
  toResourceProperties GreengrassDeviceDefinition{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::DeviceDefinition"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("InitialVersion",) . toJSON) _greengrassDeviceDefinitionInitialVersion
        , (Just . ("Name",) . toJSON) _greengrassDeviceDefinitionName
        , fmap (("Tags",) . toJSON) _greengrassDeviceDefinitionTags
        ]
    }

-- | Constructor for 'GreengrassDeviceDefinition' containing required fields
-- as arguments.
greengrassDeviceDefinition
  :: Val Text -- ^ 'gddName'
  -> GreengrassDeviceDefinition
greengrassDeviceDefinition namearg =
  GreengrassDeviceDefinition
  { _greengrassDeviceDefinitionInitialVersion = Nothing
  , _greengrassDeviceDefinitionName = namearg
  , _greengrassDeviceDefinitionTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html#cfn-greengrass-devicedefinition-initialversion
gddInitialVersion :: Lens' GreengrassDeviceDefinition (Maybe GreengrassDeviceDefinitionDeviceDefinitionVersion)
gddInitialVersion = lens _greengrassDeviceDefinitionInitialVersion (\s a -> s { _greengrassDeviceDefinitionInitialVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html#cfn-greengrass-devicedefinition-name
gddName :: Lens' GreengrassDeviceDefinition (Val Text)
gddName = lens _greengrassDeviceDefinitionName (\s a -> s { _greengrassDeviceDefinitionName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-devicedefinition.html#cfn-greengrass-devicedefinition-tags
gddTags :: Lens' GreengrassDeviceDefinition (Maybe Object)
gddTags = lens _greengrassDeviceDefinitionTags (\s a -> s { _greengrassDeviceDefinitionTags = a })
