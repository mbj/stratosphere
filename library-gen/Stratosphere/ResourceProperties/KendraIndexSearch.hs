{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html

module Stratosphere.ResourceProperties.KendraIndexSearch where

import Stratosphere.ResourceImports


-- | Full data type definition for KendraIndexSearch. See 'kendraIndexSearch'
-- for a more convenient constructor.
data KendraIndexSearch =
  KendraIndexSearch
  { _kendraIndexSearchDisplayable :: Maybe (Val Bool)
  , _kendraIndexSearchFacetable :: Maybe (Val Bool)
  , _kendraIndexSearchSearchable :: Maybe (Val Bool)
  , _kendraIndexSearchSortable :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON KendraIndexSearch where
  toJSON KendraIndexSearch{..} =
    object $
    catMaybes
    [ fmap (("Displayable",) . toJSON) _kendraIndexSearchDisplayable
    , fmap (("Facetable",) . toJSON) _kendraIndexSearchFacetable
    , fmap (("Searchable",) . toJSON) _kendraIndexSearchSearchable
    , fmap (("Sortable",) . toJSON) _kendraIndexSearchSortable
    ]

-- | Constructor for 'KendraIndexSearch' containing required fields as
-- arguments.
kendraIndexSearch
  :: KendraIndexSearch
kendraIndexSearch  =
  KendraIndexSearch
  { _kendraIndexSearchDisplayable = Nothing
  , _kendraIndexSearchFacetable = Nothing
  , _kendraIndexSearchSearchable = Nothing
  , _kendraIndexSearchSortable = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html#cfn-kendra-index-search-displayable
kisDisplayable :: Lens' KendraIndexSearch (Maybe (Val Bool))
kisDisplayable = lens _kendraIndexSearchDisplayable (\s a -> s { _kendraIndexSearchDisplayable = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html#cfn-kendra-index-search-facetable
kisFacetable :: Lens' KendraIndexSearch (Maybe (Val Bool))
kisFacetable = lens _kendraIndexSearchFacetable (\s a -> s { _kendraIndexSearchFacetable = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html#cfn-kendra-index-search-searchable
kisSearchable :: Lens' KendraIndexSearch (Maybe (Val Bool))
kisSearchable = lens _kendraIndexSearchSearchable (\s a -> s { _kendraIndexSearchSearchable = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-search.html#cfn-kendra-index-search-sortable
kisSortable :: Lens' KendraIndexSearch (Maybe (Val Bool))
kisSortable = lens _kendraIndexSearchSortable (\s a -> s { _kendraIndexSearchSortable = a })
