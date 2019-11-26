{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLRuleGroupReferenceStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLExcludedRules

-- | Full data type definition for WAFv2WebACLRuleGroupReferenceStatement. See
-- 'waFv2WebACLRuleGroupReferenceStatement' for a more convenient
-- constructor.
data WAFv2WebACLRuleGroupReferenceStatement =
  WAFv2WebACLRuleGroupReferenceStatement
  { _wAFv2WebACLRuleGroupReferenceStatementARN :: Maybe (Val Text)
  , _wAFv2WebACLRuleGroupReferenceStatementExcludedRules :: Maybe WAFv2WebACLExcludedRules
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRuleGroupReferenceStatement where
  toJSON WAFv2WebACLRuleGroupReferenceStatement{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2WebACLRuleGroupReferenceStatementARN
    , fmap (("ExcludedRules",) . toJSON) _wAFv2WebACLRuleGroupReferenceStatementExcludedRules
    ]

-- | Constructor for 'WAFv2WebACLRuleGroupReferenceStatement' containing
-- required fields as arguments.
waFv2WebACLRuleGroupReferenceStatement
  :: WAFv2WebACLRuleGroupReferenceStatement
waFv2WebACLRuleGroupReferenceStatement  =
  WAFv2WebACLRuleGroupReferenceStatement
  { _wAFv2WebACLRuleGroupReferenceStatementARN = Nothing
  , _wAFv2WebACLRuleGroupReferenceStatementExcludedRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-arn
wafwaclrgrsARN :: Lens' WAFv2WebACLRuleGroupReferenceStatement (Maybe (Val Text))
wafwaclrgrsARN = lens _wAFv2WebACLRuleGroupReferenceStatementARN (\s a -> s { _wAFv2WebACLRuleGroupReferenceStatementARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-excludedrules
wafwaclrgrsExcludedRules :: Lens' WAFv2WebACLRuleGroupReferenceStatement (Maybe WAFv2WebACLExcludedRules)
wafwaclrgrsExcludedRules = lens _wAFv2WebACLRuleGroupReferenceStatementExcludedRules (\s a -> s { _wAFv2WebACLRuleGroupReferenceStatementExcludedRules = a })
