
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRegexPatternSetReferenceStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch
import Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformation

-- | Full data type definition for
-- WAFv2RuleGroupRegexPatternSetReferenceStatement. See
-- 'waFv2RuleGroupRegexPatternSetReferenceStatement' for a more convenient
-- constructor.
data WAFv2RuleGroupRegexPatternSetReferenceStatement =
  WAFv2RuleGroupRegexPatternSetReferenceStatement
  { _wAFv2RuleGroupRegexPatternSetReferenceStatementArn :: Val Text
  , _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch :: WAFv2RuleGroupFieldToMatch
  , _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations :: [WAFv2RuleGroupTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRegexPatternSetReferenceStatement where
  toJSON WAFv2RuleGroupRegexPatternSetReferenceStatement{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _wAFv2RuleGroupRegexPatternSetReferenceStatementArn
    , (Just . ("FieldToMatch",) . toJSON) _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch
    , (Just . ("TextTransformations",) . toJSON) _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations
    ]

-- | Constructor for 'WAFv2RuleGroupRegexPatternSetReferenceStatement'
-- containing required fields as arguments.
waFv2RuleGroupRegexPatternSetReferenceStatement
  :: Val Text -- ^ 'wafrgrpsrsArn'
  -> WAFv2RuleGroupFieldToMatch -- ^ 'wafrgrpsrsFieldToMatch'
  -> [WAFv2RuleGroupTextTransformation] -- ^ 'wafrgrpsrsTextTransformations'
  -> WAFv2RuleGroupRegexPatternSetReferenceStatement
waFv2RuleGroupRegexPatternSetReferenceStatement arnarg fieldToMatcharg textTransformationsarg =
  WAFv2RuleGroupRegexPatternSetReferenceStatement
  { _wAFv2RuleGroupRegexPatternSetReferenceStatementArn = arnarg
  , _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch = fieldToMatcharg
  , _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations = textTransformationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-arn
wafrgrpsrsArn :: Lens' WAFv2RuleGroupRegexPatternSetReferenceStatement (Val Text)
wafrgrpsrsArn = lens _wAFv2RuleGroupRegexPatternSetReferenceStatementArn (\s a -> s { _wAFv2RuleGroupRegexPatternSetReferenceStatementArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-fieldtomatch
wafrgrpsrsFieldToMatch :: Lens' WAFv2RuleGroupRegexPatternSetReferenceStatement WAFv2RuleGroupFieldToMatch
wafrgrpsrsFieldToMatch = lens _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch (\s a -> s { _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-texttransformations
wafrgrpsrsTextTransformations :: Lens' WAFv2RuleGroupRegexPatternSetReferenceStatement [WAFv2RuleGroupTextTransformation]
wafrgrpsrsTextTransformations = lens _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations (\s a -> s { _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations = a })
