{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-taglist.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupTagList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for WAFv2RuleGroupTagList. See
-- 'waFv2RuleGroupTagList' for a more convenient constructor.
data WAFv2RuleGroupTagList =
  WAFv2RuleGroupTagList
  { _wAFv2RuleGroupTagListTagList :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupTagList where
  toJSON WAFv2RuleGroupTagList{..} =
    object $
    catMaybes
    [ fmap (("TagList",) . toJSON) _wAFv2RuleGroupTagListTagList
    ]

-- | Constructor for 'WAFv2RuleGroupTagList' containing required fields as
-- arguments.
waFv2RuleGroupTagList
  :: WAFv2RuleGroupTagList
waFv2RuleGroupTagList  =
  WAFv2RuleGroupTagList
  { _wAFv2RuleGroupTagListTagList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-taglist.html#cfn-wafv2-rulegroup-taglist-taglist
wafrgtlTagList :: Lens' WAFv2RuleGroupTagList (Maybe [Tag])
wafrgtlTagList = lens _wAFv2RuleGroupTagListTagList (\s a -> s { _wAFv2RuleGroupTagListTagList = a })
