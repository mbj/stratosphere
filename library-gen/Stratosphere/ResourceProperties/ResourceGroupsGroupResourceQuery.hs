
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html

module Stratosphere.ResourceProperties.ResourceGroupsGroupResourceQuery where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ResourceGroupsGroupQuery

-- | Full data type definition for ResourceGroupsGroupResourceQuery. See
-- 'resourceGroupsGroupResourceQuery' for a more convenient constructor.
data ResourceGroupsGroupResourceQuery =
  ResourceGroupsGroupResourceQuery
  { _resourceGroupsGroupResourceQueryQuery :: Maybe ResourceGroupsGroupQuery
  , _resourceGroupsGroupResourceQueryType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ResourceGroupsGroupResourceQuery where
  toJSON ResourceGroupsGroupResourceQuery{..} =
    object $
    catMaybes
    [ fmap (("Query",) . toJSON) _resourceGroupsGroupResourceQueryQuery
    , fmap (("Type",) . toJSON) _resourceGroupsGroupResourceQueryType
    ]

-- | Constructor for 'ResourceGroupsGroupResourceQuery' containing required
-- fields as arguments.
resourceGroupsGroupResourceQuery
  :: ResourceGroupsGroupResourceQuery
resourceGroupsGroupResourceQuery  =
  ResourceGroupsGroupResourceQuery
  { _resourceGroupsGroupResourceQueryQuery = Nothing
  , _resourceGroupsGroupResourceQueryType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-query
rggrqQuery :: Lens' ResourceGroupsGroupResourceQuery (Maybe ResourceGroupsGroupQuery)
rggrqQuery = lens _resourceGroupsGroupResourceQueryQuery (\s a -> s { _resourceGroupsGroupResourceQueryQuery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-resourcegroups-group-resourcequery.html#cfn-resourcegroups-group-resourcequery-type
rggrqType :: Lens' ResourceGroupsGroupResourceQuery (Maybe (Val Text))
rggrqType = lens _resourceGroupsGroupResourceQueryType (\s a -> s { _resourceGroupsGroupResourceQueryType = a })
