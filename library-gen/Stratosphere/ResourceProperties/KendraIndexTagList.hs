{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-taglist.html

module Stratosphere.ResourceProperties.KendraIndexTagList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for KendraIndexTagList. See
-- 'kendraIndexTagList' for a more convenient constructor.
data KendraIndexTagList =
  KendraIndexTagList
  { _kendraIndexTagListTagList :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON KendraIndexTagList where
  toJSON KendraIndexTagList{..} =
    object $
    catMaybes
    [ fmap (("TagList",) . toJSON) _kendraIndexTagListTagList
    ]

-- | Constructor for 'KendraIndexTagList' containing required fields as
-- arguments.
kendraIndexTagList
  :: KendraIndexTagList
kendraIndexTagList  =
  KendraIndexTagList
  { _kendraIndexTagListTagList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-taglist.html#cfn-kendra-index-taglist-taglist
kitlTagList :: Lens' KendraIndexTagList (Maybe [Tag])
kitlTagList = lens _kendraIndexTagListTagList (\s a -> s { _kendraIndexTagListTagList = a })
