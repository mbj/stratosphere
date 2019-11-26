{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternsetsummary.html

module Stratosphere.ResourceProperties.WAFv2RegexPatternSetRegexPatternSetSummary where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RegexPatternSetRegexPatternSetSummary.
-- See 'waFv2RegexPatternSetRegexPatternSetSummary' for a more convenient
-- constructor.
data WAFv2RegexPatternSetRegexPatternSetSummary =
  WAFv2RegexPatternSetRegexPatternSetSummary
  { _wAFv2RegexPatternSetRegexPatternSetSummaryARN :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegexPatternSetSummaryDescription :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegexPatternSetSummaryId :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegexPatternSetSummaryLockToken :: Maybe (Val Text)
  , _wAFv2RegexPatternSetRegexPatternSetSummaryName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2RegexPatternSetRegexPatternSetSummary where
  toJSON WAFv2RegexPatternSetRegexPatternSetSummary{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetSummaryARN
    , fmap (("Description",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetSummaryDescription
    , fmap (("Id",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetSummaryId
    , fmap (("LockToken",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetSummaryLockToken
    , fmap (("Name",) . toJSON) _wAFv2RegexPatternSetRegexPatternSetSummaryName
    ]

-- | Constructor for 'WAFv2RegexPatternSetRegexPatternSetSummary' containing
-- required fields as arguments.
waFv2RegexPatternSetRegexPatternSetSummary
  :: WAFv2RegexPatternSetRegexPatternSetSummary
waFv2RegexPatternSetRegexPatternSetSummary  =
  WAFv2RegexPatternSetRegexPatternSetSummary
  { _wAFv2RegexPatternSetRegexPatternSetSummaryARN = Nothing
  , _wAFv2RegexPatternSetRegexPatternSetSummaryDescription = Nothing
  , _wAFv2RegexPatternSetRegexPatternSetSummaryId = Nothing
  , _wAFv2RegexPatternSetRegexPatternSetSummaryLockToken = Nothing
  , _wAFv2RegexPatternSetRegexPatternSetSummaryName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternsetsummary.html#cfn-wafv2-regexpatternset-regexpatternsetsummary-arn
wafrpsrpssARN :: Lens' WAFv2RegexPatternSetRegexPatternSetSummary (Maybe (Val Text))
wafrpsrpssARN = lens _wAFv2RegexPatternSetRegexPatternSetSummaryARN (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetSummaryARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternsetsummary.html#cfn-wafv2-regexpatternset-regexpatternsetsummary-description
wafrpsrpssDescription :: Lens' WAFv2RegexPatternSetRegexPatternSetSummary (Maybe (Val Text))
wafrpsrpssDescription = lens _wAFv2RegexPatternSetRegexPatternSetSummaryDescription (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetSummaryDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternsetsummary.html#cfn-wafv2-regexpatternset-regexpatternsetsummary-id
wafrpsrpssId :: Lens' WAFv2RegexPatternSetRegexPatternSetSummary (Maybe (Val Text))
wafrpsrpssId = lens _wAFv2RegexPatternSetRegexPatternSetSummaryId (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetSummaryId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternsetsummary.html#cfn-wafv2-regexpatternset-regexpatternsetsummary-locktoken
wafrpsrpssLockToken :: Lens' WAFv2RegexPatternSetRegexPatternSetSummary (Maybe (Val Text))
wafrpsrpssLockToken = lens _wAFv2RegexPatternSetRegexPatternSetSummaryLockToken (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetSummaryLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-regexpatternset-regexpatternsetsummary.html#cfn-wafv2-regexpatternset-regexpatternsetsummary-name
wafrpsrpssName :: Lens' WAFv2RegexPatternSetRegexPatternSetSummary (Maybe (Val Text))
wafrpsrpssName = lens _wAFv2RegexPatternSetRegexPatternSetSummaryName (\s a -> s { _wAFv2RegexPatternSetRegexPatternSetSummaryName = a })
