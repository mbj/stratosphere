
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLXssMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformation

-- | Full data type definition for WAFv2WebACLXssMatchStatement. See
-- 'waFv2WebACLXssMatchStatement' for a more convenient constructor.
data WAFv2WebACLXssMatchStatement =
  WAFv2WebACLXssMatchStatement
  { _wAFv2WebACLXssMatchStatementFieldToMatch :: WAFv2WebACLFieldToMatch
  , _wAFv2WebACLXssMatchStatementTextTransformations :: [WAFv2WebACLTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLXssMatchStatement where
  toJSON WAFv2WebACLXssMatchStatement{..} =
    object $
    catMaybes
    [ (Just . ("FieldToMatch",) . toJSON) _wAFv2WebACLXssMatchStatementFieldToMatch
    , (Just . ("TextTransformations",) . toJSON) _wAFv2WebACLXssMatchStatementTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLXssMatchStatement' containing required fields
-- as arguments.
waFv2WebACLXssMatchStatement
  :: WAFv2WebACLFieldToMatch -- ^ 'wafwaclxmsFieldToMatch'
  -> [WAFv2WebACLTextTransformation] -- ^ 'wafwaclxmsTextTransformations'
  -> WAFv2WebACLXssMatchStatement
waFv2WebACLXssMatchStatement fieldToMatcharg textTransformationsarg =
  WAFv2WebACLXssMatchStatement
  { _wAFv2WebACLXssMatchStatementFieldToMatch = fieldToMatcharg
  , _wAFv2WebACLXssMatchStatementTextTransformations = textTransformationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-fieldtomatch
wafwaclxmsFieldToMatch :: Lens' WAFv2WebACLXssMatchStatement WAFv2WebACLFieldToMatch
wafwaclxmsFieldToMatch = lens _wAFv2WebACLXssMatchStatementFieldToMatch (\s a -> s { _wAFv2WebACLXssMatchStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-texttransformations
wafwaclxmsTextTransformations :: Lens' WAFv2WebACLXssMatchStatement [WAFv2WebACLTextTransformation]
wafwaclxmsTextTransformations = lens _wAFv2WebACLXssMatchStatementTextTransformations (\s a -> s { _wAFv2WebACLXssMatchStatementTextTransformations = a })
