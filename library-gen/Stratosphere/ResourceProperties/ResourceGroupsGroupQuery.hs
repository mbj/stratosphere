
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html

module Stratosphere.ResourceProperties.ResourceGroupsGroupQuery where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ResourceGroupsGroupTagFilter

-- | Full data type definition for ResourceGroupsGroupQuery. See
-- 'resourceGroupsGroupQuery' for a more convenient constructor.
data ResourceGroupsGroupQuery =
  ResourceGroupsGroupQuery
  { _resourceGroupsGroupQueryResourceTypeFilters :: Maybe (ValList Text)
  , _resourceGroupsGroupQueryStackIdentifier :: Maybe (Val Text)
  , _resourceGroupsGroupQueryTagFilters :: Maybe [ResourceGroupsGroupTagFilter]
  } deriving (Show, Eq)

instance ToJSON ResourceGroupsGroupQuery where
  toJSON ResourceGroupsGroupQuery{..} =
    object $
    catMaybes
    [ fmap (("ResourceTypeFilters",) . toJSON) _resourceGroupsGroupQueryResourceTypeFilters
    , fmap (("StackIdentifier",) . toJSON) _resourceGroupsGroupQueryStackIdentifier
    , fmap (("TagFilters",) . toJSON) _resourceGroupsGroupQueryTagFilters
    ]

-- | Constructor for 'ResourceGroupsGroupQuery' containing required fields as
-- arguments.
resourceGroupsGroupQuery
  :: ResourceGroupsGroupQuery
resourceGroupsGroupQuery  =
  ResourceGroupsGroupQuery
  { _resourceGroupsGroupQueryResourceTypeFilters = Nothing
  , _resourceGroupsGroupQueryStackIdentifier = Nothing
  , _resourceGroupsGroupQueryTagFilters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-resourcetypefilters
rggqResourceTypeFilters :: Lens' ResourceGroupsGroupQuery (Maybe (ValList Text))
rggqResourceTypeFilters = lens _resourceGroupsGroupQueryResourceTypeFilters (\s a -> s { _resourceGroupsGroupQueryResourceTypeFilters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-stackidentifier
rggqStackIdentifier :: Lens' ResourceGroupsGroupQuery (Maybe (Val Text))
rggqStackIdentifier = lens _resourceGroupsGroupQueryStackIdentifier (\s a -> s { _resourceGroupsGroupQueryStackIdentifier = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-query.html#cfn-resourcegroups-group-query-tagfilters
rggqTagFilters :: Lens' ResourceGroupsGroupQuery (Maybe [ResourceGroupsGroupTagFilter])
rggqTagFilters = lens _resourceGroupsGroupQueryTagFilters (\s a -> s { _resourceGroupsGroupQueryTagFilters = a })
