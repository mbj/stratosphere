
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html

module Stratosphere.ResourceProperties.WAFWebACLActivatedRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFWebACLWafAction

-- | Full data type definition for WAFWebACLActivatedRule. See
-- 'wafWebACLActivatedRule' for a more convenient constructor.
data WAFWebACLActivatedRule =
  WAFWebACLActivatedRule
  { _wAFWebACLActivatedRuleAction :: Maybe WAFWebACLWafAction
  , _wAFWebACLActivatedRulePriority :: Val Integer
  , _wAFWebACLActivatedRuleRuleId :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFWebACLActivatedRule where
  toJSON WAFWebACLActivatedRule{..} =
    object $
    catMaybes
    [ fmap (("Action",) . toJSON) _wAFWebACLActivatedRuleAction
    , (Just . ("Priority",) . toJSON) _wAFWebACLActivatedRulePriority
    , (Just . ("RuleId",) . toJSON) _wAFWebACLActivatedRuleRuleId
    ]

-- | Constructor for 'WAFWebACLActivatedRule' containing required fields as
-- arguments.
wafWebACLActivatedRule
  :: Val Integer -- ^ 'wafwaclarPriority'
  -> Val Text -- ^ 'wafwaclarRuleId'
  -> WAFWebACLActivatedRule
wafWebACLActivatedRule priorityarg ruleIdarg =
  WAFWebACLActivatedRule
  { _wAFWebACLActivatedRuleAction = Nothing
  , _wAFWebACLActivatedRulePriority = priorityarg
  , _wAFWebACLActivatedRuleRuleId = ruleIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-action
wafwaclarAction :: Lens' WAFWebACLActivatedRule (Maybe WAFWebACLWafAction)
wafwaclarAction = lens _wAFWebACLActivatedRuleAction (\s a -> s { _wAFWebACLActivatedRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-priority
wafwaclarPriority :: Lens' WAFWebACLActivatedRule (Val Integer)
wafwaclarPriority = lens _wAFWebACLActivatedRulePriority (\s a -> s { _wAFWebACLActivatedRulePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-ruleid
wafwaclarRuleId :: Lens' WAFWebACLActivatedRule (Val Text)
wafwaclarRuleId = lens _wAFWebACLActivatedRuleRuleId (\s a -> s { _wAFWebACLActivatedRuleRuleId = a })
