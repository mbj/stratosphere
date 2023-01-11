
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-datacatalog-tags.html

module Stratosphere.ResourceProperties.AthenaDataCatalogTags where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for AthenaDataCatalogTags. See
-- 'athenaDataCatalogTags' for a more convenient constructor.
data AthenaDataCatalogTags =
  AthenaDataCatalogTags
  { _athenaDataCatalogTagsTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON AthenaDataCatalogTags where
  toJSON AthenaDataCatalogTags{..} =
    object $
    catMaybes
    [ fmap (("Tags",) . toJSON) _athenaDataCatalogTagsTags
    ]

-- | Constructor for 'AthenaDataCatalogTags' containing required fields as
-- arguments.
athenaDataCatalogTags
  :: AthenaDataCatalogTags
athenaDataCatalogTags  =
  AthenaDataCatalogTags
  { _athenaDataCatalogTagsTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-datacatalog-tags.html#cfn-athena-datacatalog-tags-tags
adctTags :: Lens' AthenaDataCatalogTags (Maybe [Tag])
adctTags = lens _athenaDataCatalogTagsTags (\s a -> s { _athenaDataCatalogTagsTags = a })
