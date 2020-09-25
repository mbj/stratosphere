{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-faq-taglist.html

module Stratosphere.ResourceProperties.KendraFaqTagList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for KendraFaqTagList. See 'kendraFaqTagList'
-- for a more convenient constructor.
data KendraFaqTagList =
  KendraFaqTagList
  { _kendraFaqTagListTagList :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON KendraFaqTagList where
  toJSON KendraFaqTagList{..} =
    object $
    catMaybes
    [ fmap (("TagList",) . toJSON) _kendraFaqTagListTagList
    ]

-- | Constructor for 'KendraFaqTagList' containing required fields as
-- arguments.
kendraFaqTagList
  :: KendraFaqTagList
kendraFaqTagList  =
  KendraFaqTagList
  { _kendraFaqTagListTagList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-faq-taglist.html#cfn-kendra-faq-taglist-taglist
kftlTagList :: Lens' KendraFaqTagList (Maybe [Tag])
kftlTagList = lens _kendraFaqTagListTagList (\s a -> s { _kendraFaqTagListTagList = a })
