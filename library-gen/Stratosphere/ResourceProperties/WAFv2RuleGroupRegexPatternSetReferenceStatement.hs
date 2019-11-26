{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupRegexPatternSetReferenceStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch
import Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformations

-- | Full data type definition for
-- WAFv2RuleGroupRegexPatternSetReferenceStatement. See
-- 'waFv2RuleGroupRegexPatternSetReferenceStatement' for a more convenient
-- constructor.
data WAFv2RuleGroupRegexPatternSetReferenceStatement =
  WAFv2RuleGroupRegexPatternSetReferenceStatement
  { _wAFv2RuleGroupRegexPatternSetReferenceStatementARN :: Maybe (Val Text)
  , _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch :: Maybe WAFv2RuleGroupFieldToMatch
  , _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations :: Maybe WAFv2RuleGroupTextTransformations
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupRegexPatternSetReferenceStatement where
  toJSON WAFv2RuleGroupRegexPatternSetReferenceStatement{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2RuleGroupRegexPatternSetReferenceStatementARN
    , fmap (("FieldToMatch",) . toJSON) _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch
    , fmap (("TextTransformations",) . toJSON) _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations
    ]

-- | Constructor for 'WAFv2RuleGroupRegexPatternSetReferenceStatement'
-- containing required fields as arguments.
waFv2RuleGroupRegexPatternSetReferenceStatement
  :: WAFv2RuleGroupRegexPatternSetReferenceStatement
waFv2RuleGroupRegexPatternSetReferenceStatement  =
  WAFv2RuleGroupRegexPatternSetReferenceStatement
  { _wAFv2RuleGroupRegexPatternSetReferenceStatementARN = Nothing
  , _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch = Nothing
  , _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-arn
wafrgrpsrsARN :: Lens' WAFv2RuleGroupRegexPatternSetReferenceStatement (Maybe (Val Text))
wafrgrpsrsARN = lens _wAFv2RuleGroupRegexPatternSetReferenceStatementARN (\s a -> s { _wAFv2RuleGroupRegexPatternSetReferenceStatementARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-fieldtomatch
wafrgrpsrsFieldToMatch :: Lens' WAFv2RuleGroupRegexPatternSetReferenceStatement (Maybe WAFv2RuleGroupFieldToMatch)
wafrgrpsrsFieldToMatch = lens _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch (\s a -> s { _wAFv2RuleGroupRegexPatternSetReferenceStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-regexpatternsetreferencestatement.html#cfn-wafv2-rulegroup-regexpatternsetreferencestatement-texttransformations
wafrgrpsrsTextTransformations :: Lens' WAFv2RuleGroupRegexPatternSetReferenceStatement (Maybe WAFv2RuleGroupTextTransformations)
wafrgrpsrsTextTransformations = lens _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations (\s a -> s { _wAFv2RuleGroupRegexPatternSetReferenceStatementTextTransformations = a })
