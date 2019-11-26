{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-taglist.html

module Stratosphere.ResourceProperties.WAFv2WebACLTagList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for WAFv2WebACLTagList. See
-- 'waFv2WebACLTagList' for a more convenient constructor.
data WAFv2WebACLTagList =
  WAFv2WebACLTagList
  { _wAFv2WebACLTagListTagList :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLTagList where
  toJSON WAFv2WebACLTagList{..} =
    object $
    catMaybes
    [ fmap (("TagList",) . toJSON) _wAFv2WebACLTagListTagList
    ]

-- | Constructor for 'WAFv2WebACLTagList' containing required fields as
-- arguments.
waFv2WebACLTagList
  :: WAFv2WebACLTagList
waFv2WebACLTagList  =
  WAFv2WebACLTagList
  { _wAFv2WebACLTagListTagList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-taglist.html#cfn-wafv2-webacl-taglist-taglist
wafwacltlTagList :: Lens' WAFv2WebACLTagList (Maybe [Tag])
wafwacltlTagList = lens _wAFv2WebACLTagListTagList (\s a -> s { _wAFv2WebACLTagListTagList = a })
