
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-findingsfilterlistitem.html

module Stratosphere.ResourceProperties.MacieFindingsFilterFindingsFilterListItem where

import Stratosphere.ResourceImports


-- | Full data type definition for MacieFindingsFilterFindingsFilterListItem.
-- See 'macieFindingsFilterFindingsFilterListItem' for a more convenient
-- constructor.
data MacieFindingsFilterFindingsFilterListItem =
  MacieFindingsFilterFindingsFilterListItem
  { _macieFindingsFilterFindingsFilterListItemId :: Maybe (Val Text)
  , _macieFindingsFilterFindingsFilterListItemName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON MacieFindingsFilterFindingsFilterListItem where
  toJSON MacieFindingsFilterFindingsFilterListItem{..} =
    object $
    catMaybes
    [ fmap (("Id",) . toJSON) _macieFindingsFilterFindingsFilterListItemId
    , fmap (("Name",) . toJSON) _macieFindingsFilterFindingsFilterListItemName
    ]

-- | Constructor for 'MacieFindingsFilterFindingsFilterListItem' containing
-- required fields as arguments.
macieFindingsFilterFindingsFilterListItem
  :: MacieFindingsFilterFindingsFilterListItem
macieFindingsFilterFindingsFilterListItem  =
  MacieFindingsFilterFindingsFilterListItem
  { _macieFindingsFilterFindingsFilterListItemId = Nothing
  , _macieFindingsFilterFindingsFilterListItemName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-findingsfilterlistitem.html#cfn-macie-findingsfilter-findingsfilterlistitem-id
mffffliId :: Lens' MacieFindingsFilterFindingsFilterListItem (Maybe (Val Text))
mffffliId = lens _macieFindingsFilterFindingsFilterListItemId (\s a -> s { _macieFindingsFilterFindingsFilterListItemId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-macie-findingsfilter-findingsfilterlistitem.html#cfn-macie-findingsfilter-findingsfilterlistitem-name
mffffliName :: Lens' MacieFindingsFilterFindingsFilterListItem (Maybe (Val Text))
mffffliName = lens _macieFindingsFilterFindingsFilterListItemName (\s a -> s { _macieFindingsFilterFindingsFilterListItemName = a })
