
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupIPSetReferenceStatement where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupIPSetForwardedIPConfiguration

-- | Full data type definition for WAFv2RuleGroupIPSetReferenceStatement. See
-- 'waFv2RuleGroupIPSetReferenceStatement' for a more convenient
-- constructor.
data WAFv2RuleGroupIPSetReferenceStatement =
  WAFv2RuleGroupIPSetReferenceStatement
  { _wAFv2RuleGroupIPSetReferenceStatementArn :: Val Text
  , _wAFv2RuleGroupIPSetReferenceStatementIPSetForwardedIPConfig :: Maybe WAFv2RuleGroupIPSetForwardedIPConfiguration
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupIPSetReferenceStatement where
  toJSON WAFv2RuleGroupIPSetReferenceStatement{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _wAFv2RuleGroupIPSetReferenceStatementArn
    , fmap (("IPSetForwardedIPConfig",) . toJSON) _wAFv2RuleGroupIPSetReferenceStatementIPSetForwardedIPConfig
    ]

-- | Constructor for 'WAFv2RuleGroupIPSetReferenceStatement' containing
-- required fields as arguments.
waFv2RuleGroupIPSetReferenceStatement
  :: Val Text -- ^ 'wafrgipsrsArn'
  -> WAFv2RuleGroupIPSetReferenceStatement
waFv2RuleGroupIPSetReferenceStatement arnarg =
  WAFv2RuleGroupIPSetReferenceStatement
  { _wAFv2RuleGroupIPSetReferenceStatementArn = arnarg
  , _wAFv2RuleGroupIPSetReferenceStatementIPSetForwardedIPConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html#cfn-wafv2-rulegroup-ipsetreferencestatement-arn
wafrgipsrsArn :: Lens' WAFv2RuleGroupIPSetReferenceStatement (Val Text)
wafrgipsrsArn = lens _wAFv2RuleGroupIPSetReferenceStatementArn (\s a -> s { _wAFv2RuleGroupIPSetReferenceStatementArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-ipsetreferencestatement.html#cfn-wafv2-rulegroup-ipsetreferencestatement-ipsetforwardedipconfig
wafrgipsrsIPSetForwardedIPConfig :: Lens' WAFv2RuleGroupIPSetReferenceStatement (Maybe WAFv2RuleGroupIPSetForwardedIPConfiguration)
wafrgipsrsIPSetForwardedIPConfig = lens _wAFv2RuleGroupIPSetReferenceStatementIPSetForwardedIPConfig (\s a -> s { _wAFv2RuleGroupIPSetReferenceStatementIPSetForwardedIPConfig = a })
