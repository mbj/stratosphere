
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLRuleGroupReferenceStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLExcludedRule

-- | Full data type definition for WAFv2WebACLRuleGroupReferenceStatement. See
-- 'waFv2WebACLRuleGroupReferenceStatement' for a more convenient
-- constructor.
data WAFv2WebACLRuleGroupReferenceStatement =
  WAFv2WebACLRuleGroupReferenceStatement
  { _wAFv2WebACLRuleGroupReferenceStatementArn :: Val Text
  , _wAFv2WebACLRuleGroupReferenceStatementExcludedRules :: Maybe [WAFv2WebACLExcludedRule]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRuleGroupReferenceStatement where
  toJSON WAFv2WebACLRuleGroupReferenceStatement{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _wAFv2WebACLRuleGroupReferenceStatementArn
    , fmap (("ExcludedRules",) . toJSON) _wAFv2WebACLRuleGroupReferenceStatementExcludedRules
    ]

-- | Constructor for 'WAFv2WebACLRuleGroupReferenceStatement' containing
-- required fields as arguments.
waFv2WebACLRuleGroupReferenceStatement
  :: Val Text -- ^ 'wafwaclrgrsArn'
  -> WAFv2WebACLRuleGroupReferenceStatement
waFv2WebACLRuleGroupReferenceStatement arnarg =
  WAFv2WebACLRuleGroupReferenceStatement
  { _wAFv2WebACLRuleGroupReferenceStatementArn = arnarg
  , _wAFv2WebACLRuleGroupReferenceStatementExcludedRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-arn
wafwaclrgrsArn :: Lens' WAFv2WebACLRuleGroupReferenceStatement (Val Text)
wafwaclrgrsArn = lens _wAFv2WebACLRuleGroupReferenceStatementArn (\s a -> s { _wAFv2WebACLRuleGroupReferenceStatementArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rulegroupreferencestatement.html#cfn-wafv2-webacl-rulegroupreferencestatement-excludedrules
wafwaclrgrsExcludedRules :: Lens' WAFv2WebACLRuleGroupReferenceStatement (Maybe [WAFv2WebACLExcludedRule])
wafwaclrgrsExcludedRules = lens _wAFv2WebACLRuleGroupReferenceStatementExcludedRules (\s a -> s { _wAFv2WebACLRuleGroupReferenceStatementExcludedRules = a })
