{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementOne
import Stratosphere.ResourceProperties.WAFv2RuleGroupVisibilityConfig

-- | Full data type definition for WAFv2RuleGroupRule. See
-- 'waFv2RuleGroupRule' for a more convenient constructor.
data WAFv2RuleGroupRule =
  WAFv2RuleGroupRule
  { _wAFv2RuleGroupRuleName :: Maybe (Val Text)
  , _wAFv2RuleGroupRulePriority :: Maybe (Val Integer)
  , _wAFv2RuleGroupRuleStatement :: Maybe WAFv2RuleGroupStatementOne
  , _wAFv2RuleGroupRuleVisibilityConfig :: Maybe WAFv2RuleGroupVisibilityConfig
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRule where
  toJSON WAFv2RuleGroupRule{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _wAFv2RuleGroupRuleName
    , fmap (("Priority",) . toJSON) _wAFv2RuleGroupRulePriority
    , fmap (("Statement",) . toJSON) _wAFv2RuleGroupRuleStatement
    , fmap (("VisibilityConfig",) . toJSON) _wAFv2RuleGroupRuleVisibilityConfig
    ]

-- | Constructor for 'WAFv2RuleGroupRule' containing required fields as
-- arguments.
waFv2RuleGroupRule
  :: WAFv2RuleGroupRule
waFv2RuleGroupRule  =
  WAFv2RuleGroupRule
  { _wAFv2RuleGroupRuleName = Nothing
  , _wAFv2RuleGroupRulePriority = Nothing
  , _wAFv2RuleGroupRuleStatement = Nothing
  , _wAFv2RuleGroupRuleVisibilityConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-name
wafrgrName :: Lens' WAFv2RuleGroupRule (Maybe (Val Text))
wafrgrName = lens _wAFv2RuleGroupRuleName (\s a -> s { _wAFv2RuleGroupRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-priority
wafrgrPriority :: Lens' WAFv2RuleGroupRule (Maybe (Val Integer))
wafrgrPriority = lens _wAFv2RuleGroupRulePriority (\s a -> s { _wAFv2RuleGroupRulePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-statement
wafrgrStatement :: Lens' WAFv2RuleGroupRule (Maybe WAFv2RuleGroupStatementOne)
wafrgrStatement = lens _wAFv2RuleGroupRuleStatement (\s a -> s { _wAFv2RuleGroupRuleStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-visibilityconfig
wafrgrVisibilityConfig :: Lens' WAFv2RuleGroupRule (Maybe WAFv2RuleGroupVisibilityConfig)
wafrgrVisibilityConfig = lens _wAFv2RuleGroupRuleVisibilityConfig (\s a -> s { _wAFv2RuleGroupRuleVisibilityConfig = a })
