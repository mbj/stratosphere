{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-taglist.html

module Stratosphere.ResourceProperties.KendraDataSourceTagList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for KendraDataSourceTagList. See
-- 'kendraDataSourceTagList' for a more convenient constructor.
data KendraDataSourceTagList =
  KendraDataSourceTagList
  { _kendraDataSourceTagListTagList :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceTagList where
  toJSON KendraDataSourceTagList{..} =
    object $
    catMaybes
    [ fmap (("TagList",) . toJSON) _kendraDataSourceTagListTagList
    ]

-- | Constructor for 'KendraDataSourceTagList' containing required fields as
-- arguments.
kendraDataSourceTagList
  :: KendraDataSourceTagList
kendraDataSourceTagList  =
  KendraDataSourceTagList
  { _kendraDataSourceTagListTagList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-taglist.html#cfn-kendra-datasource-taglist-taglist
kdstlTagList :: Lens' KendraDataSourceTagList (Maybe [Tag])
kdstlTagList = lens _kendraDataSourceTagListTagList (\s a -> s { _kendraDataSourceTagListTagList = a })
