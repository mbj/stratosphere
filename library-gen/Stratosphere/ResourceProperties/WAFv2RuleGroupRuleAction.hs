
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRuleAction where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupRuleAction. See
-- 'waFv2RuleGroupRuleAction' for a more convenient constructor.
data WAFv2RuleGroupRuleAction =
  WAFv2RuleGroupRuleAction
  { _wAFv2RuleGroupRuleActionAllow :: Maybe Object
  , _wAFv2RuleGroupRuleActionBlock :: Maybe Object
  , _wAFv2RuleGroupRuleActionCount :: Maybe Object
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRuleAction where
  toJSON WAFv2RuleGroupRuleAction{..} =
    object $
    catMaybes
    [ fmap (("Allow",) . toJSON) _wAFv2RuleGroupRuleActionAllow
    , fmap (("Block",) . toJSON) _wAFv2RuleGroupRuleActionBlock
    , fmap (("Count",) . toJSON) _wAFv2RuleGroupRuleActionCount
    ]

-- | Constructor for 'WAFv2RuleGroupRuleAction' containing required fields as
-- arguments.
waFv2RuleGroupRuleAction
  :: WAFv2RuleGroupRuleAction
waFv2RuleGroupRuleAction  =
  WAFv2RuleGroupRuleAction
  { _wAFv2RuleGroupRuleActionAllow = Nothing
  , _wAFv2RuleGroupRuleActionBlock = Nothing
  , _wAFv2RuleGroupRuleActionCount = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-allow
wafrgraAllow :: Lens' WAFv2RuleGroupRuleAction (Maybe Object)
wafrgraAllow = lens _wAFv2RuleGroupRuleActionAllow (\s a -> s { _wAFv2RuleGroupRuleActionAllow = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-block
wafrgraBlock :: Lens' WAFv2RuleGroupRuleAction (Maybe Object)
wafrgraBlock = lens _wAFv2RuleGroupRuleActionBlock (\s a -> s { _wAFv2RuleGroupRuleActionBlock = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ruleaction.html#cfn-wafv2-rulegroup-ruleaction-count
wafrgraCount :: Lens' WAFv2RuleGroupRuleAction (Maybe Object)
wafrgraCount = lens _wAFv2RuleGroupRuleActionCount (\s a -> s { _wAFv2RuleGroupRuleActionCount = a })
