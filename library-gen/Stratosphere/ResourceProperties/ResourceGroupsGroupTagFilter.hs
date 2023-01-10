
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html

module Stratosphere.ResourceProperties.ResourceGroupsGroupTagFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for ResourceGroupsGroupTagFilter. See
-- 'resourceGroupsGroupTagFilter' for a more convenient constructor.
data ResourceGroupsGroupTagFilter =
  ResourceGroupsGroupTagFilter
  { _resourceGroupsGroupTagFilterKey :: Maybe (Val Text)
  , _resourceGroupsGroupTagFilterValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ResourceGroupsGroupTagFilter where
  toJSON ResourceGroupsGroupTagFilter{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _resourceGroupsGroupTagFilterKey
    , fmap (("Values",) . toJSON) _resourceGroupsGroupTagFilterValues
    ]

-- | Constructor for 'ResourceGroupsGroupTagFilter' containing required fields
-- as arguments.
resourceGroupsGroupTagFilter
  :: ResourceGroupsGroupTagFilter
resourceGroupsGroupTagFilter  =
  ResourceGroupsGroupTagFilter
  { _resourceGroupsGroupTagFilterKey = Nothing
  , _resourceGroupsGroupTagFilterValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html#cfn-resourcegroups-group-tagfilter-key
rggtfKey :: Lens' ResourceGroupsGroupTagFilter (Maybe (Val Text))
rggtfKey = lens _resourceGroupsGroupTagFilterKey (\s a -> s { _resourceGroupsGroupTagFilterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-tagfilter.html#cfn-resourcegroups-group-tagfilter-values
rggtfValues :: Lens' ResourceGroupsGroupTagFilter (Maybe (ValList Text))
rggtfValues = lens _resourceGroupsGroupTagFilterValues (\s a -> s { _resourceGroupsGroupTagFilterValues = a })
