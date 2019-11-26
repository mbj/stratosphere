{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rules.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRules where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupRule

-- | Full data type definition for WAFv2RuleGroupRules. See
-- 'waFv2RuleGroupRules' for a more convenient constructor.
data WAFv2RuleGroupRules =
  WAFv2RuleGroupRules
  { _wAFv2RuleGroupRulesRules :: Maybe [WAFv2RuleGroupRule]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRules where
  toJSON WAFv2RuleGroupRules{..} =
    object $
    catMaybes
    [ fmap (("Rules",) . toJSON) _wAFv2RuleGroupRulesRules
    ]

-- | Constructor for 'WAFv2RuleGroupRules' containing required fields as
-- arguments.
waFv2RuleGroupRules
  :: WAFv2RuleGroupRules
waFv2RuleGroupRules  =
  WAFv2RuleGroupRules
  { _wAFv2RuleGroupRulesRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rules.html#cfn-wafv2-rulegroup-rules-rules
wafrgrRules :: Lens' WAFv2RuleGroupRules (Maybe [WAFv2RuleGroupRule])
wafrgrRules = lens _wAFv2RuleGroupRulesRules (\s a -> s { _wAFv2RuleGroupRulesRules = a })
