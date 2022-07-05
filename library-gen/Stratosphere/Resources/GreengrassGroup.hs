{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html

module Stratosphere.Resources.GreengrassGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.GreengrassGroupGroupVersion

-- | Full data type definition for GreengrassGroup. See 'greengrassGroup' for
-- a more convenient constructor.
data GreengrassGroup =
  GreengrassGroup
  { _greengrassGroupInitialVersion :: Maybe GreengrassGroupGroupVersion
  , _greengrassGroupName :: Val Text
  , _greengrassGroupRoleArn :: Maybe (Val Text)
  , _greengrassGroupTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties GreengrassGroup where
  toResourceProperties GreengrassGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Greengrass::Group"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("InitialVersion",) . toJSON) _greengrassGroupInitialVersion
        , (Just . ("Name",) . toJSON) _greengrassGroupName
        , fmap (("RoleArn",) . toJSON) _greengrassGroupRoleArn
        , fmap (("Tags",) . toJSON) _greengrassGroupTags
        ]
    }

-- | Constructor for 'GreengrassGroup' containing required fields as
-- arguments.
greengrassGroup
  :: Val Text -- ^ 'ggName'
  -> GreengrassGroup
greengrassGroup namearg =
  GreengrassGroup
  { _greengrassGroupInitialVersion = Nothing
  , _greengrassGroupName = namearg
  , _greengrassGroupRoleArn = Nothing
  , _greengrassGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html#cfn-greengrass-group-initialversion
ggInitialVersion :: Lens' GreengrassGroup (Maybe GreengrassGroupGroupVersion)
ggInitialVersion = lens _greengrassGroupInitialVersion (\s a -> s { _greengrassGroupInitialVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html#cfn-greengrass-group-name
ggName :: Lens' GreengrassGroup (Val Text)
ggName = lens _greengrassGroupName (\s a -> s { _greengrassGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html#cfn-greengrass-group-rolearn
ggRoleArn :: Lens' GreengrassGroup (Maybe (Val Text))
ggRoleArn = lens _greengrassGroupRoleArn (\s a -> s { _greengrassGroupRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-greengrass-group.html#cfn-greengrass-group-tags
ggTags :: Lens' GreengrassGroup (Maybe Object)
ggTags = lens _greengrassGroupTags (\s a -> s { _greengrassGroupTags = a })
