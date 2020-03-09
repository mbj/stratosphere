{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupIPSetReferenceStatement where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupIPSetReferenceStatement. See
-- 'waFv2RuleGroupIPSetReferenceStatement' for a more convenient
-- constructor.
data WAFv2RuleGroupIPSetReferenceStatement =
  WAFv2RuleGroupIPSetReferenceStatement
  { _wAFv2RuleGroupIPSetReferenceStatementArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupIPSetReferenceStatement where
  toJSON WAFv2RuleGroupIPSetReferenceStatement{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _wAFv2RuleGroupIPSetReferenceStatementArn
    ]

-- | Constructor for 'WAFv2RuleGroupIPSetReferenceStatement' containing
-- required fields as arguments.
waFv2RuleGroupIPSetReferenceStatement
  :: Val Text -- ^ 'wafrgipsrsArn'
  -> WAFv2RuleGroupIPSetReferenceStatement
waFv2RuleGroupIPSetReferenceStatement arnarg =
  WAFv2RuleGroupIPSetReferenceStatement
  { _wAFv2RuleGroupIPSetReferenceStatementArn = arnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html#cfn-wafv2-rulegroup-ipsetreferencestatement-arn
wafrgipsrsArn :: Lens' WAFv2RuleGroupIPSetReferenceStatement (Val Text)
wafrgipsrsArn = lens _wAFv2RuleGroupIPSetReferenceStatementArn (\s a -> s { _wAFv2RuleGroupIPSetReferenceStatementArn = a })
