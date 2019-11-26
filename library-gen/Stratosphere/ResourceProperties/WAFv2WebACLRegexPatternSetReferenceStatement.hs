{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLRegexPatternSetReferenceStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformations

-- | Full data type definition for
-- WAFv2WebACLRegexPatternSetReferenceStatement. See
-- 'waFv2WebACLRegexPatternSetReferenceStatement' for a more convenient
-- constructor.
data WAFv2WebACLRegexPatternSetReferenceStatement =
  WAFv2WebACLRegexPatternSetReferenceStatement
  { _wAFv2WebACLRegexPatternSetReferenceStatementARN :: Maybe (Val Text)
  , _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch :: Maybe WAFv2WebACLFieldToMatch
  , _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations :: Maybe WAFv2WebACLTextTransformations
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRegexPatternSetReferenceStatement where
  toJSON WAFv2WebACLRegexPatternSetReferenceStatement{..} =
    object $
    catMaybes
    [ fmap (("ARN",) . toJSON) _wAFv2WebACLRegexPatternSetReferenceStatementARN
    , fmap (("FieldToMatch",) . toJSON) _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch
    , fmap (("TextTransformations",) . toJSON) _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLRegexPatternSetReferenceStatement' containing
-- required fields as arguments.
waFv2WebACLRegexPatternSetReferenceStatement
  :: WAFv2WebACLRegexPatternSetReferenceStatement
waFv2WebACLRegexPatternSetReferenceStatement  =
  WAFv2WebACLRegexPatternSetReferenceStatement
  { _wAFv2WebACLRegexPatternSetReferenceStatementARN = Nothing
  , _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch = Nothing
  , _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-arn
wafwaclrpsrsARN :: Lens' WAFv2WebACLRegexPatternSetReferenceStatement (Maybe (Val Text))
wafwaclrpsrsARN = lens _wAFv2WebACLRegexPatternSetReferenceStatementARN (\s a -> s { _wAFv2WebACLRegexPatternSetReferenceStatementARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-fieldtomatch
wafwaclrpsrsFieldToMatch :: Lens' WAFv2WebACLRegexPatternSetReferenceStatement (Maybe WAFv2WebACLFieldToMatch)
wafwaclrpsrsFieldToMatch = lens _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch (\s a -> s { _wAFv2WebACLRegexPatternSetReferenceStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-regexpatternsetreferencestatement.html#cfn-wafv2-webacl-regexpatternsetreferencestatement-texttransformations
wafwaclrpsrsTextTransformations :: Lens' WAFv2WebACLRegexPatternSetReferenceStatement (Maybe WAFv2WebACLTextTransformations)
wafwaclrpsrsTextTransformations = lens _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations (\s a -> s { _wAFv2WebACLRegexPatternSetReferenceStatementTextTransformations = a })
