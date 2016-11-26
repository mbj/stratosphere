{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-waf-webacl-rules.html

module Stratosphere.ResourceProperties.WAFWebACLActivatedRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.WAFWebACLWafAction

-- | Full data type definition for WAFWebACLActivatedRule. See
-- | 'wafWebACLActivatedRule' for a more convenient constructor.
data WAFWebACLActivatedRule =
  WAFWebACLActivatedRule
  { _wAFWebACLActivatedRuleAction :: WAFWebACLWafAction
  , _wAFWebACLActivatedRulePriority :: Val Integer'
  , _wAFWebACLActivatedRuleRuleId :: Val Text
  } deriving (Show, Generic)

instance ToJSON WAFWebACLActivatedRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON WAFWebACLActivatedRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'WAFWebACLActivatedRule' containing required fields as
-- | arguments.
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
