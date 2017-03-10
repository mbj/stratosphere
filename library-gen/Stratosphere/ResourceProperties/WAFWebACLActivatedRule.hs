{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html

module Stratosphere.ResourceProperties.WAFWebACLActivatedRule where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFWebACLWafAction

-- | Full data type definition for WAFWebACLActivatedRule. See
-- 'wafWebACLActivatedRule' for a more convenient constructor.
data WAFWebACLActivatedRule =
  WAFWebACLActivatedRule
  { _wAFWebACLActivatedRuleAction :: WAFWebACLWafAction
  , _wAFWebACLActivatedRulePriority :: Val Integer'
  , _wAFWebACLActivatedRuleRuleId :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFWebACLActivatedRule where
  toJSON WAFWebACLActivatedRule{..} =
    object $
    catMaybes
    [ Just ("Action" .= _wAFWebACLActivatedRuleAction)
    , Just ("Priority" .= _wAFWebACLActivatedRulePriority)
    , Just ("RuleId" .= _wAFWebACLActivatedRuleRuleId)
    ]

instance FromJSON WAFWebACLActivatedRule where
  parseJSON (Object obj) =
    WAFWebACLActivatedRule <$>
      obj .: "Action" <*>
      obj .: "Priority" <*>
      obj .: "RuleId"
  parseJSON _ = mempty

-- | Constructor for 'WAFWebACLActivatedRule' containing required fields as
-- arguments.
wafWebACLActivatedRule
  :: WAFWebACLWafAction -- ^ 'wafwaclarAction'
  -> Val Integer' -- ^ 'wafwaclarPriority'
  -> Val Text -- ^ 'wafwaclarRuleId'
  -> WAFWebACLActivatedRule
wafWebACLActivatedRule actionarg priorityarg ruleIdarg =
  WAFWebACLActivatedRule
  { _wAFWebACLActivatedRuleAction = actionarg
  , _wAFWebACLActivatedRulePriority = priorityarg
  , _wAFWebACLActivatedRuleRuleId = ruleIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-action
wafwaclarAction :: Lens' WAFWebACLActivatedRule WAFWebACLWafAction
wafwaclarAction = lens _wAFWebACLActivatedRuleAction (\s a -> s { _wAFWebACLActivatedRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-priority
wafwaclarPriority :: Lens' WAFWebACLActivatedRule (Val Integer')
wafwaclarPriority = lens _wAFWebACLActivatedRulePriority (\s a -> s { _wAFWebACLActivatedRulePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html#cfn-waf-webacl-rules-ruleid
wafwaclarRuleId :: Lens' WAFWebACLActivatedRule (Val Text)
wafwaclarRuleId = lens _wAFWebACLActivatedRuleRuleId (\s a -> s { _wAFWebACLActivatedRuleRuleId = a })
