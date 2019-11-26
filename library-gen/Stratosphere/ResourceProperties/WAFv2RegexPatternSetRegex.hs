{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regex.html

module Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegex where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RegexPatternSetRegex. See
-- 'waFv2RegexPatternSetRegex' for a more convenient constructor.
data WAFv2RegexPatternSetRegex =
  WAFv2RegexPatternSetRegex
  { _wAFv2RegexPatternSetRegexRegexString :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2RegexPatternSetRegex where
  toJSON WAFv2RegexPatternSetRegex{..} =
    object $
    catMaybes
    [ fmap (("RegexString",) . toJSON) _wAFv2RegexPatternSetRegexRegexString
    ]

-- | Constructor for 'WAFv2RegexPatternSetRegex' containing required fields as
-- arguments.
waFv2RegexPatternSetRegex
  :: WAFv2RegexPatternSetRegex
waFv2RegexPatternSetRegex  =
  WAFv2RegexPatternSetRegex
  { _wAFv2RegexPatternSetRegexRegexString = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regex.html#cfn-wafv2-regexpatternset-regex-regexstring
wafrpsrRegexString :: Lens' WAFv2RegexPatternSetRegex (Maybe (Val Text))
wafrpsrRegexString = lens _wAFv2RegexPatternSetRegexRegexString (\s a -> s { _wAFv2RegexPatternSetRegexRegexString = a })
