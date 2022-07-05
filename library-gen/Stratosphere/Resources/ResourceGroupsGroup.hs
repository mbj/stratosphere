{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-group.html

module Stratosphere.Resources.ResourceGroupsGroup where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ResourceGroupsGroupResourceQuery
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ResourceGroupsGroup. See
-- 'resourceGroupsGroup' for a more convenient constructor.
data ResourceGroupsGroup =
  ResourceGroupsGroup
  { _resourceGroupsGroupDescription :: Maybe (Val Text)
  , _resourceGroupsGroupName :: Val Text
  , _resourceGroupsGroupResourceQuery :: Maybe ResourceGroupsGroupResourceQuery
  , _resourceGroupsGroupTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties ResourceGroupsGroup where
  toResourceProperties ResourceGroupsGroup{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ResourceGroups::Group"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _resourceGroupsGroupDescription
        , (Just . ("Name",) . toJSON) _resourceGroupsGroupName
        , fmap (("ResourceQuery",) . toJSON) _resourceGroupsGroupResourceQuery
        , fmap (("Tags",) . toJSON) _resourceGroupsGroupTags
        ]
    }

-- | Constructor for 'ResourceGroupsGroup' containing required fields as
-- arguments.
resourceGroupsGroup
  :: Val Text -- ^ 'rggName'
  -> ResourceGroupsGroup
resourceGroupsGroup namearg =
  ResourceGroupsGroup
  { _resourceGroupsGroupDescription = Nothing
  , _resourceGroupsGroupName = namearg
  , _resourceGroupsGroupResourceQuery = Nothing
  , _resourceGroupsGroupTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-group.html#cfn-resourcegroups-group-description
rggDescription :: Lens' ResourceGroupsGroup (Maybe (Val Text))
rggDescription = lens _resourceGroupsGroupDescription (\s a -> s { _resourceGroupsGroupDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-group.html#cfn-resourcegroups-group-name
rggName :: Lens' ResourceGroupsGroup (Val Text)
rggName = lens _resourceGroupsGroupName (\s a -> s { _resourceGroupsGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-group.html#cfn-resourcegroups-group-resourcequery
rggResourceQuery :: Lens' ResourceGroupsGroup (Maybe ResourceGroupsGroupResourceQuery)
rggResourceQuery = lens _resourceGroupsGroupResourceQuery (\s a -> s { _resourceGroupsGroupResourceQuery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-resourcegroups-group.html#cfn-resourcegroups-group-tags
rggTags :: Lens' ResourceGroupsGroup (Maybe [Tag])
rggTags = lens _resourceGroupsGroupTags (\s a -> s { _resourceGroupsGroupTags = a })
