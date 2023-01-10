
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLRegexPatternSetReferenceStatement where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformation

-- | Full data type definition for
-- WAFv2WebACLRegexPatternSetReferenceStatement. See
-- 'waFv2WebACLRegexPatternSetReferenceStatement' for a more convenient
-- constructor.
data WAFv2WebACLRegexPatternSetReferenceStatement =
  WAFv2WebACLRegexPatternSetReferenceStatement
  { _wAFv2WebACLRegexPatternSetReferenceStatementArn :: Val Text
  , _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch :: WAFv2WebACLFieldToMatch
  , _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations :: [WAFv2WebACLTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRegexPatternSetReferenceStatement where
  toJSON WAFv2WebACLRegexPatternSetReferenceStatement{..} =
    object $
    catMaybes
    [ (Just . ("Arn",) . toJSON) _wAFv2WebACLRegexPatternSetReferenceStatementArn
    , (Just . ("FieldToMatch",) . toJSON) _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch
    , (Just . ("TextTransformations",) . toJSON) _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLRegexPatternSetReferenceStatement' containing
-- required fields as arguments.
waFv2WebACLRegexPatternSetReferenceStatement
  :: Val Text -- ^ 'wafwaclrpsrsArn'
  -> WAFv2WebACLFieldToMatch -- ^ 'wafwaclrpsrsFieldToMatch'
  -> [WAFv2WebACLTextTransformation] -- ^ 'wafwaclrpsrsTextTransformations'
  -> WAFv2WebACLRegexPatternSetReferenceStatement
waFv2WebACLRegexPatternSetReferenceStatement arnarg fieldToMatcharg textTransformationsarg =
  WAFv2WebACLRegexPatternSetReferenceStatement
  { _wAFv2WebACLRegexPatternSetReferenceStatementArn = arnarg
  , _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch = fieldToMatcharg
  , _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations = textTransformationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-arn
wafwaclrpsrsArn :: Lens' WAFv2WebACLRegexPatternSetReferenceStatement (Val Text)
wafwaclrpsrsArn = lens _wAFv2WebACLRegexPatternSetReferenceStatementArn (\s a -> s { _wAFv2WebACLRegexPatternSetReferenceStatementArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-fieldtomatch
wafwaclrpsrsFieldToMatch :: Lens' WAFv2WebACLRegexPatternSetReferenceStatement WAFv2WebACLFieldToMatch
wafwaclrpsrsFieldToMatch = lens _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch (\s a -> s { _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-texttransformations
wafwaclrpsrsTextTransformations :: Lens' WAFv2WebACLRegexPatternSetReferenceStatement [WAFv2WebACLTextTransformation]
wafwaclrpsrsTextTransformations = lens _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations (\s a -> s { _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations = a })
