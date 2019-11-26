{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-taglist.html

module Stratosphere.ResourceProperties.WAFv2IPSetTagList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for WAFv2IPSetTagList. See 'waFv2IPSetTagList'
-- for a more convenient constructor.
data WAFv2IPSetTagList =
  WAFv2IPSetTagList
  { _wAFv2IPSetTagListTagList :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON WAFv2IPSetTagList where
  toJSON WAFv2IPSetTagList{..} =
    object $
    catMaybes
    [ fmap (("TagList",) . toJSON) _wAFv2IPSetTagListTagList
    ]

-- | Constructor for 'WAFv2IPSetTagList' containing required fields as
-- arguments.
waFv2IPSetTagList
  :: WAFv2IPSetTagList
waFv2IPSetTagList  =
  WAFv2IPSetTagList
  { _wAFv2IPSetTagListTagList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-taglist.html#cfn-wafv2-ipset-taglist-taglist
wafipstlTagList :: Lens' WAFv2IPSetTagList (Maybe [Tag])
wafipstlTagList = lens _wAFv2IPSetTagListTagList (\s a -> s { _wAFv2IPSetTagListTagList = a })
