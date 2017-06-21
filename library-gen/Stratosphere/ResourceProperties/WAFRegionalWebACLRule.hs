{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html

module Stratosphere.ResourceProperties.WAFRegionalWebACLRule where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFRegionalWebACLAction

-- | Full data type definition for WAFRegionalWebACLRule. See
-- 'wafRegionalWebACLRule' for a more convenient constructor.
data WAFRegionalWebACLRule =
  WAFRegionalWebACLRule
  { _wAFRegionalWebACLRuleAction :: WAFRegionalWebACLAction
  , _wAFRegionalWebACLRulePriority :: Val Integer'
  , _wAFRegionalWebACLRuleRuleId :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFRegionalWebACLRule where
  toJSON WAFRegionalWebACLRule{..} =
    object $
    catMaybes
    [ Just ("Action" .= _wAFRegionalWebACLRuleAction)
    , Just ("Priority" .= _wAFRegionalWebACLRulePriority)
    , Just ("RuleId" .= _wAFRegionalWebACLRuleRuleId)
    ]

instance FromJSON WAFRegionalWebACLRule where
  parseJSON (Object obj) =
    WAFRegionalWebACLRule <$>
      obj .: "Action" <*>
      obj .: "Priority" <*>
      obj .: "RuleId"
  parseJSON _ = mempty

-- | Constructor for 'WAFRegionalWebACLRule' containing required fields as
-- arguments.
wafRegionalWebACLRule
  :: WAFRegionalWebACLAction -- ^ 'wafrwaclrAction'
  -> Val Integer' -- ^ 'wafrwaclrPriority'
  -> Val Text -- ^ 'wafrwaclrRuleId'
  -> WAFRegionalWebACLRule
wafRegionalWebACLRule actionarg priorityarg ruleIdarg =
  WAFRegionalWebACLRule
  { _wAFRegionalWebACLRuleAction = actionarg
  , _wAFRegionalWebACLRulePriority = priorityarg
  , _wAFRegionalWebACLRuleRuleId = ruleIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-action
wafrwaclrAction :: Lens' WAFRegionalWebACLRule WAFRegionalWebACLAction
wafrwaclrAction = lens _wAFRegionalWebACLRuleAction (\s a -> s { _wAFRegionalWebACLRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-priority
wafrwaclrPriority :: Lens' WAFRegionalWebACLRule (Val Integer')
wafrwaclrPriority = lens _wAFRegionalWebACLRulePriority (\s a -> s { _wAFRegionalWebACLRulePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafregional-webacl-rule.html#cfn-wafregional-webacl-rule-ruleid
wafrwaclrRuleId :: Lens' WAFRegionalWebACLRule (Val Text)
wafrwaclrRuleId = lens _wAFRegionalWebACLRuleRuleId (\s a -> s { _wAFRegionalWebACLRuleRuleId = a })
