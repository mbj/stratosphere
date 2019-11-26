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
  { _wAFv2RuleGroupIPSetReferenceStatementARN :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupIPSetReferenceStatement where
  toJSON WAFv2RuleGroupIPSetReferenceStatement{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2RuleGroupIPSetReferenceStatementARN
    ]

-- | Constructor for 'WAFv2RuleGroupIPSetReferenceStatement' containing
-- required fields as arguments.
waFv2RuleGroupIPSetReferenceStatement
  :: WAFv2RuleGroupIPSetReferenceStatement
waFv2RuleGroupIPSetReferenceStatement  =
  WAFv2RuleGroupIPSetReferenceStatement
  { _wAFv2RuleGroupIPSetReferenceStatementARN = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html#cfn-wafv2-rulegroup-ipsetreferencestatement-arn
wafrgipsrsARN :: Lens' WAFv2RuleGroupIPSetReferenceStatement (Maybe (Val Text))
wafrgipsrsARN = lens _wAFv2RuleGroupIPSetReferenceStatementARN (\s a -> s { _wAFv2RuleGroupIPSetReferenceStatementARN = a })
