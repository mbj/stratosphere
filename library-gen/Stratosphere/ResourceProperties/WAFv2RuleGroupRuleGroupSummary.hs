{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroupsummary.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRuleGroupSummary where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupRuleGroupSummary. See
-- 'waFv2RuleGroupRuleGroupSummary' for a more convenient constructor.
data WAFv2RuleGroupRuleGroupSummary =
  WAFv2RuleGroupRuleGroupSummary
  { _wAFv2RuleGroupRuleGroupSummaryARN :: Maybe (Val Text)
  , _wAFv2RuleGroupRuleGroupSummaryDescription :: Maybe (Val Text)
  , _wAFv2RuleGroupRuleGroupSummaryId :: Maybe (Val Text)
  , _wAFv2RuleGroupRuleGroupSummaryLockToken :: Maybe (Val Text)
  , _wAFv2RuleGroupRuleGroupSummaryName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRuleGroupSummary where
  toJSON WAFv2RuleGroupRuleGroupSummary{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2RuleGroupRuleGroupSummaryARN
    , fmap (("Description",) . toJSON) _wAFv2RuleGroupRuleGroupSummaryDescription
    , fmap (("Id",) . toJSON) _wAFv2RuleGroupRuleGroupSummaryId
    , fmap (("LockToken",) . toJSON) _wAFv2RuleGroupRuleGroupSummaryLockToken
    , fmap (("Name",) . toJSON) _wAFv2RuleGroupRuleGroupSummaryName
    ]

-- | Constructor for 'WAFv2RuleGroupRuleGroupSummary' containing required
-- fields as arguments.
waFv2RuleGroupRuleGroupSummary
  :: WAFv2RuleGroupRuleGroupSummary
waFv2RuleGroupRuleGroupSummary  =
  WAFv2RuleGroupRuleGroupSummary
  { _wAFv2RuleGroupRuleGroupSummaryARN = Nothing
  , _wAFv2RuleGroupRuleGroupSummaryDescription = Nothing
  , _wAFv2RuleGroupRuleGroupSummaryId = Nothing
  , _wAFv2RuleGroupRuleGroupSummaryLockToken = Nothing
  , _wAFv2RuleGroupRuleGroupSummaryName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroupsummary.html#cfn-wafv2-rulegroup-rulegroupsummary-arn
wafrgrgsARN :: Lens' WAFv2RuleGroupRuleGroupSummary (Maybe (Val Text))
wafrgrgsARN = lens _wAFv2RuleGroupRuleGroupSummaryARN (\s a -> s { _wAFv2RuleGroupRuleGroupSummaryARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroupsummary.html#cfn-wafv2-rulegroup-rulegroupsummary-description
wafrgrgsDescription :: Lens' WAFv2RuleGroupRuleGroupSummary (Maybe (Val Text))
wafrgrgsDescription = lens _wAFv2RuleGroupRuleGroupSummaryDescription (\s a -> s { _wAFv2RuleGroupRuleGroupSummaryDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroupsummary.html#cfn-wafv2-rulegroup-rulegroupsummary-id
wafrgrgsId :: Lens' WAFv2RuleGroupRuleGroupSummary (Maybe (Val Text))
wafrgrgsId = lens _wAFv2RuleGroupRuleGroupSummaryId (\s a -> s { _wAFv2RuleGroupRuleGroupSummaryId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroupsummary.html#cfn-wafv2-rulegroup-rulegroupsummary-locktoken
wafrgrgsLockToken :: Lens' WAFv2RuleGroupRuleGroupSummary (Maybe (Val Text))
wafrgrgsLockToken = lens _wAFv2RuleGroupRuleGroupSummaryLockToken (\s a -> s { _wAFv2RuleGroupRuleGroupSummaryLockToken = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroupsummary.html#cfn-wafv2-rulegroup-rulegroupsummary-name
wafrgrgsName :: Lens' WAFv2RuleGroupRuleGroupSummary (Maybe (Val Text))
wafrgrgsName = lens _wAFv2RuleGroupRuleGroupSummaryName (\s a -> s { _wAFv2RuleGroupRuleGroupSummaryName = a })
