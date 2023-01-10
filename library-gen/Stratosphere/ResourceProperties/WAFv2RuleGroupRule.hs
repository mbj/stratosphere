
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupRuleAction
import Stratosphere.ResourceProperties.WAFv2RuleGroupStatementOne
import Stratosphere.ResourceProperties.WAFv2RuleGroupVisibilityConfig

-- | Full data type definition for WAFv2RuleGroupRule. See
-- 'waFv2RuleGroupRule' for a more convenient constructor.
data WAFv2RuleGroupRule =
  WAFv2RuleGroupRule
  { _wAFv2RuleGroupRuleAction :: Maybe WAFv2RuleGroupRuleAction
  , _wAFv2RuleGroupRuleName :: Val Text
  , _wAFv2RuleGroupRulePriority :: Val Integer
  , _wAFv2RuleGroupRuleStatement :: WAFv2RuleGroupStatementOne
  , _wAFv2RuleGroupRuleVisibilityConfig :: WAFv2RuleGroupVisibilityConfig
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRule where
  toJSON WAFv2RuleGroupRule{..} =
    object $
    catMaybes
    [ fmap (("Action",) . toJSON) _wAFv2RuleGroupRuleAction
    , (Just . ("Name",) . toJSON) _wAFv2RuleGroupRuleName
    , (Just . ("Priority",) . toJSON) _wAFv2RuleGroupRulePriority
    , (Just . ("Statement",) . toJSON) _wAFv2RuleGroupRuleStatement
    , (Just . ("VisibilityConfig",) . toJSON) _wAFv2RuleGroupRuleVisibilityConfig
    ]

-- | Constructor for 'WAFv2RuleGroupRule' containing required fields as
-- arguments.
waFv2RuleGroupRule
  :: Val Text -- ^ 'wafrgrName'
  -> Val Integer -- ^ 'wafrgrPriority'
  -> WAFv2RuleGroupStatementOne -- ^ 'wafrgrStatement'
  -> WAFv2RuleGroupVisibilityConfig -- ^ 'wafrgrVisibilityConfig'
  -> WAFv2RuleGroupRule
waFv2RuleGroupRule namearg priorityarg statementarg visibilityConfigarg =
  WAFv2RuleGroupRule
  { _wAFv2RuleGroupRuleAction = Nothing
  , _wAFv2RuleGroupRuleName = namearg
  , _wAFv2RuleGroupRulePriority = priorityarg
  , _wAFv2RuleGroupRuleStatement = statementarg
  , _wAFv2RuleGroupRuleVisibilityConfig = visibilityConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-action
wafrgrAction :: Lens' WAFv2RuleGroupRule (Maybe WAFv2RuleGroupRuleAction)
wafrgrAction = lens _wAFv2RuleGroupRuleAction (\s a -> s { _wAFv2RuleGroupRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-name
wafrgrName :: Lens' WAFv2RuleGroupRule (Val Text)
wafrgrName = lens _wAFv2RuleGroupRuleName (\s a -> s { _wAFv2RuleGroupRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-priority
wafrgrPriority :: Lens' WAFv2RuleGroupRule (Val Integer)
wafrgrPriority = lens _wAFv2RuleGroupRulePriority (\s a -> s { _wAFv2RuleGroupRulePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-statement
wafrgrStatement :: Lens' WAFv2RuleGroupRule WAFv2RuleGroupStatementOne
wafrgrStatement = lens _wAFv2RuleGroupRuleStatement (\s a -> s { _wAFv2RuleGroupRuleStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-rule.html#cfn-wafv2-rulegroup-rule-visibilityconfig
wafrgrVisibilityConfig :: Lens' WAFv2RuleGroupRule WAFv2RuleGroupVisibilityConfig
wafrgrVisibilityConfig = lens _wAFv2RuleGroupRuleVisibilityConfig (\s a -> s { _wAFv2RuleGroupRuleVisibilityConfig = a })
