{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html

module Stratosphere.ResourceProperties.WAFv2WebACLRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLRuleAction
import Stratosphere.ResourceProperties.WAFv2WebACLOverrideAction
import Stratosphere.ResourceProperties.WAFv2WebACLStatementOne
import Stratosphere.ResourceProperties.WAFv2WebACLVisibilityConfig

-- | Full data type definition for WAFv2WebACLRule. See 'waFv2WebACLRule' for
-- a more convenient constructor.
data WAFv2WebACLRule =
  WAFv2WebACLRule
  { _wAFv2WebACLRuleAction :: Maybe WAFv2WebACLRuleAction
  , _wAFv2WebACLRuleName :: Val Text
  , _wAFv2WebACLRuleOverrideAction :: Maybe WAFv2WebACLOverrideAction
  , _wAFv2WebACLRulePriority :: Val Integer
  , _wAFv2WebACLRuleStatement :: WAFv2WebACLStatementOne
  , _wAFv2WebACLRuleVisibilityConfig :: WAFv2WebACLVisibilityConfig
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRule where
  toJSON WAFv2WebACLRule{..} =
    object $
    catMaybes
    [ fmap (("Action",) . toJSON) _wAFv2WebACLRuleAction
    , (Just . ("Name",) . toJSON) _wAFv2WebACLRuleName
    , fmap (("OverrideAction",) . toJSON) _wAFv2WebACLRuleOverrideAction
    , (Just . ("Priority",) . toJSON) _wAFv2WebACLRulePriority
    , (Just . ("Statement",) . toJSON) _wAFv2WebACLRuleStatement
    , (Just . ("VisibilityConfig",) . toJSON) _wAFv2WebACLRuleVisibilityConfig
    ]

-- | Constructor for 'WAFv2WebACLRule' containing required fields as
-- arguments.
waFv2WebACLRule
  :: Val Text -- ^ 'wafwaclrName'
  -> Val Integer -- ^ 'wafwaclrPriority'
  -> WAFv2WebACLStatementOne -- ^ 'wafwaclrStatement'
  -> WAFv2WebACLVisibilityConfig -- ^ 'wafwaclrVisibilityConfig'
  -> WAFv2WebACLRule
waFv2WebACLRule namearg priorityarg statementarg visibilityConfigarg =
  WAFv2WebACLRule
  { _wAFv2WebACLRuleAction = Nothing
  , _wAFv2WebACLRuleName = namearg
  , _wAFv2WebACLRuleOverrideAction = Nothing
  , _wAFv2WebACLRulePriority = priorityarg
  , _wAFv2WebACLRuleStatement = statementarg
  , _wAFv2WebACLRuleVisibilityConfig = visibilityConfigarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-action
wafwaclrAction :: Lens' WAFv2WebACLRule (Maybe WAFv2WebACLRuleAction)
wafwaclrAction = lens _wAFv2WebACLRuleAction (\s a -> s { _wAFv2WebACLRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-name
wafwaclrName :: Lens' WAFv2WebACLRule (Val Text)
wafwaclrName = lens _wAFv2WebACLRuleName (\s a -> s { _wAFv2WebACLRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-overrideaction
wafwaclrOverrideAction :: Lens' WAFv2WebACLRule (Maybe WAFv2WebACLOverrideAction)
wafwaclrOverrideAction = lens _wAFv2WebACLRuleOverrideAction (\s a -> s { _wAFv2WebACLRuleOverrideAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-priority
wafwaclrPriority :: Lens' WAFv2WebACLRule (Val Integer)
wafwaclrPriority = lens _wAFv2WebACLRulePriority (\s a -> s { _wAFv2WebACLRulePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-statement
wafwaclrStatement :: Lens' WAFv2WebACLRule WAFv2WebACLStatementOne
wafwaclrStatement = lens _wAFv2WebACLRuleStatement (\s a -> s { _wAFv2WebACLRuleStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-visibilityconfig
wafwaclrVisibilityConfig :: Lens' WAFv2WebACLRule WAFv2WebACLVisibilityConfig
wafwaclrVisibilityConfig = lens _wAFv2WebACLRuleVisibilityConfig (\s a -> s { _wAFv2WebACLRuleVisibilityConfig = a })
