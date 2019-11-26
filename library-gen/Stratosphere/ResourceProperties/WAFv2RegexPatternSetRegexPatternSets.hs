{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternsets.html

module Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegexPatternSets where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegexPatternSetSummary

-- | Full data type definition for WAFv2RegexPatternSetRegexPatternSets. See
-- 'waFv2RegexPatternSetRegexPatternSets' for a more convenient constructor.
data WAFv2RegexPatternSetRegexPatternSets =
  WAFv2RegexPatternSetRegexPatternSets
  { _wAFv2RegexPatternSetRegexPatternSetsRegexPatternSets :: Maybe [WAFv2RegexPatternSetRegexPatternSetSummary]
  } deriving (Show, Eq)

instance ToJSON WAFv2RegexPatternSetRegexPatternSets where
  toJSON WAFv2RegexPatternSetRegexPatternSets{..} =
    object $
    catMaybes
    [ fmap (("RegexPatternSets",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetsRegexPatternSets
    ]

-- | Constructor for 'WAFv2RegexPatternSetRegexPatternSets' containing
-- required fields as arguments.
waFv2RegexPatternSetRegexPatternSets
  :: WAFv2RegexPatternSetRegexPatternSets
waFv2RegexPatternSetRegexPatternSets  =
  WAFv2RegexPatternSetRegexPatternSets
  { _wAFv2RegexPatternSetRegexPatternSetsRegexPatternSets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternsets.html#cfn-wafv2-regexpatternset-regexpatternsets-regexpatternsets
wafrpsrpsRegexPatternSets :: Lens' WAFv2RegexPatternSetRegexPatternSets (Maybe [WAFv2RegexPatternSetRegexPatternSetSummary])
wafrpsrpsRegexPatternSets = lens _wAFv2RegexPatternSetRegexPatternSetsRegexPatternSets (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetsRegexPatternSets = a })
