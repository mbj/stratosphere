{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regularexpressionlist.html

module Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegularExpressionList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegex

-- | Full data type definition for WAFv2RegexPatternSetRegularExpressionList.
-- See 'waFv2RegexPatternSetRegularExpressionList' for a more convenient
-- constructor.
data WAFv2RegexPatternSetRegularExpressionList =
  WAFv2RegexPatternSetRegularExpressionList
  { _wAFv2RegexPatternSetRegularExpressionListRegularExpressionList :: Maybe [WAFv2RegexPatternSetRegex]
  } deriving (Show, Eq)

instance ToJSON WAFv2RegexPatternSetRegularExpressionList where
  toJSON WAFv2RegexPatternSetRegularExpressionList{..} =
    object $
    catMaybes
    [ fmap (("RegularExpressionList",) . toJSON) _wAFv2RegexPatternSetRegularExpressionListRegularExpressionList
    ]

-- | Constructor for 'WAFv2RegexPatternSetRegularExpressionList' containing
-- required fields as arguments.
waFv2RegexPatternSetRegularExpressionList
  :: WAFv2RegexPatternSetRegularExpressionList
waFv2RegexPatternSetRegularExpressionList  =
  WAFv2RegexPatternSetRegularExpressionList
  { _wAFv2RegexPatternSetRegularExpressionListRegularExpressionList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regularexpressionlist.html#cfn-wafv2-regexpatternset-regularexpressionlist-regularexpressionlist
wafrpsrelRegularExpressionList :: Lens' WAFv2RegexPatternSetRegularExpressionList (Maybe [WAFv2RegexPatternSetRegex])
wafrpsrelRegularExpressionList = lens _wAFv2RegexPatternSetRegularExpressionListRegularExpressionList (\s a -> s { _wAFv2RegexPatternSetRegularExpressionListRegularExpressionList = a })
