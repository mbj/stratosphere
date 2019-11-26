{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-taglist.html

module Stratosphere.ResourceProperties.WAFv2RegexPatternSetTagList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for WAFv2RegexPatternSetTagList. See
-- 'waFv2RegexPatternSetTagList' for a more convenient constructor.
data WAFv2RegexPatternSetTagList =
  WAFv2RegexPatternSetTagList
  { _wAFv2RegexPatternSetTagListTagList :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON WAFv2RegexPatternSetTagList where
  toJSON WAFv2RegexPatternSetTagList{..} =
    object $
    catMaybes
    [ fmap (("TagList",) . toJSON) _wAFv2RegexPatternSetTagListTagList
    ]

-- | Constructor for 'WAFv2RegexPatternSetTagList' containing required fields
-- as arguments.
waFv2RegexPatternSetTagList
  :: WAFv2RegexPatternSetTagList
waFv2RegexPatternSetTagList  =
  WAFv2RegexPatternSetTagList
  { _wAFv2RegexPatternSetTagListTagList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-taglist.html#cfn-wafv2-regexpatternset-taglist-taglist
wafrpstlTagList :: Lens' WAFv2RegexPatternSetTagList (Maybe [Tag])
wafrpstlTagList = lens _wAFv2RegexPatternSetTagListTagList (\s a -> s { _wAFv2RegexPatternSetTagListTagList = a })
