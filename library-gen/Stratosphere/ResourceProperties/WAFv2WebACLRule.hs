{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html

module Stratosphere.ResourceProperties.WAFv2WebACLRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLStatementOne
import Stratosphere.ResourceProperties.WAFv2WebACLVisibilityConfig

-- | Full data type definition for WAFv2WebACLRule. See 'waFv2WebACLRule' for
-- a more convenient constructor.
data WAFv2WebACLRule =
  WAFv2WebACLRule
  { _wAFv2WebACLRuleName :: Maybe (Val Text)
  , _wAFv2WebACLRulePriority :: Maybe (Val Integer)
  , _wAFv2WebACLRuleStatement :: Maybe WAFv2WebACLStatementOne
  , _wAFv2WebACLRuleVisibilityConfig :: Maybe WAFv2WebACLVisibilityConfig
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRule where
  toJSON WAFv2WebACLRule{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _wAFv2WebACLRuleName
    , fmap (("Priority",) . toJSON) _wAFv2WebACLRulePriority
    , fmap (("Statement",) . toJSON) _wAFv2WebACLRuleStatement
    , fmap (("VisibilityConfig",) . toJSON) _wAFv2WebACLRuleVisibilityConfig
    ]

-- | Constructor for 'WAFv2WebACLRule' containing required fields as
-- arguments.
waFv2WebACLRule
  :: WAFv2WebACLRule
waFv2WebACLRule  =
  WAFv2WebACLRule
  { _wAFv2WebACLRuleName = Nothing
  , _wAFv2WebACLRulePriority = Nothing
  , _wAFv2WebACLRuleStatement = Nothing
  , _wAFv2WebACLRuleVisibilityConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-name
wafwaclrName :: Lens' WAFv2WebACLRule (Maybe (Val Text))
wafwaclrName = lens _wAFv2WebACLRuleName (\s a -> s { _wAFv2WebACLRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-priority
wafwaclrPriority :: Lens' WAFv2WebACLRule (Maybe (Val Integer))
wafwaclrPriority = lens _wAFv2WebACLRulePriority (\s a -> s { _wAFv2WebACLRulePriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-statement
wafwaclrStatement :: Lens' WAFv2WebACLRule (Maybe WAFv2WebACLStatementOne)
wafwaclrStatement = lens _wAFv2WebACLRuleStatement (\s a -> s { _wAFv2WebACLRuleStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rule.html#cfn-wafv2-webacl-rule-visibilityconfig
wafwaclrVisibilityConfig :: Lens' WAFv2WebACLRule (Maybe WAFv2WebACLVisibilityConfig)
wafwaclrVisibilityConfig = lens _wAFv2WebACLRuleVisibilityConfig (\s a -> s { _wAFv2WebACLRuleVisibilityConfig = a })
