{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroups.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRuleGroups where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupRuleGroupSummary

-- | Full data type definition for WAFv2RuleGroupRuleGroups. See
-- 'waFv2RuleGroupRuleGroups' for a more convenient constructor.
data WAFv2RuleGroupRuleGroups =
  WAFv2RuleGroupRuleGroups
  { _wAFv2RuleGroupRuleGroupsRuleGroups :: Maybe [WAFv2RuleGroupRuleGroupSummary]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRuleGroups where
  toJSON WAFv2RuleGroupRuleGroups{..} =
    object $
    catMaybes
    [ fmap (("RuleGroups",) . toJSON) _wAFv2RuleGroupRuleGroupsRuleGroups
    ]

-- | Constructor for 'WAFv2RuleGroupRuleGroups' containing required fields as
-- arguments.
waFv2RuleGroupRuleGroups
  :: WAFv2RuleGroupRuleGroups
waFv2RuleGroupRuleGroups  =
  WAFv2RuleGroupRuleGroups
  { _wAFv2RuleGroupRuleGroupsRuleGroups = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rulegroups.html#cfn-wafv2-rulegroup-rulegroups-rulegroups
wafrgrgRuleGroups :: Lens' WAFv2RuleGroupRuleGroups (Maybe [WAFv2RuleGroupRuleGroupSummary])
wafrgrgRuleGroups = lens _wAFv2RuleGroupRuleGroupsRuleGroups (\s a -> s { _wAFv2RuleGroupRuleGroupsRuleGroups = a })
