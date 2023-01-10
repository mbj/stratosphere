
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLByteMatchStatement where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformation

-- | Full data type definition for WAFv2WebACLByteMatchStatement. See
-- 'waFv2WebACLByteMatchStatement' for a more convenient constructor.
data WAFv2WebACLByteMatchStatement =
  WAFv2WebACLByteMatchStatement
  { _wAFv2WebACLByteMatchStatementFieldToMatch :: WAFv2WebACLFieldToMatch
  , _wAFv2WebACLByteMatchStatementPositionalConstraint :: Val Text
  , _wAFv2WebACLByteMatchStatementSearchString :: Maybe (Val Text)
  , _wAFv2WebACLByteMatchStatementSearchStringBase64 :: Maybe (Val Text)
  , _wAFv2WebACLByteMatchStatementTextTransformations :: [WAFv2WebACLTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLByteMatchStatement where
  toJSON WAFv2WebACLByteMatchStatement{..} =
    object $
    catMaybes
    [ (Just . ("FieldToMatch",) . toJSON) _wAFv2WebACLByteMatchStatementFieldToMatch
    , (Just . ("PositionalConstraint",) . toJSON) _wAFv2WebACLByteMatchStatementPositionalConstraint
    , fmap (("SearchString",) . toJSON) _wAFv2WebACLByteMatchStatementSearchString
    , fmap (("SearchStringBase64",) . toJSON) _wAFv2WebACLByteMatchStatementSearchStringBase64
    , (Just . ("TextTransformations",) . toJSON) _wAFv2WebACLByteMatchStatementTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLByteMatchStatement' containing required
-- fields as arguments.
waFv2WebACLByteMatchStatement
  :: WAFv2WebACLFieldToMatch -- ^ 'wafwaclbmsFieldToMatch'
  -> Val Text -- ^ 'wafwaclbmsPositionalConstraint'
  -> [WAFv2WebACLTextTransformation] -- ^ 'wafwaclbmsTextTransformations'
  -> WAFv2WebACLByteMatchStatement
waFv2WebACLByteMatchStatement fieldToMatcharg positionalConstraintarg textTransformationsarg =
  WAFv2WebACLByteMatchStatement
  { _wAFv2WebACLByteMatchStatementFieldToMatch = fieldToMatcharg
  , _wAFv2WebACLByteMatchStatementPositionalConstraint = positionalConstraintarg
  , _wAFv2WebACLByteMatchStatementSearchString = Nothing
  , _wAFv2WebACLByteMatchStatementSearchStringBase64 = Nothing
  , _wAFv2WebACLByteMatchStatementTextTransformations = textTransformationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-fieldtomatch
wafwaclbmsFieldToMatch :: Lens' WAFv2WebACLByteMatchStatement WAFv2WebACLFieldToMatch
wafwaclbmsFieldToMatch = lens _wAFv2WebACLByteMatchStatementFieldToMatch (\s a -> s { _wAFv2WebACLByteMatchStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-positionalconstraint
wafwaclbmsPositionalConstraint :: Lens' WAFv2WebACLByteMatchStatement (Val Text)
wafwaclbmsPositionalConstraint = lens _wAFv2WebACLByteMatchStatementPositionalConstraint (\s a -> s { _wAFv2WebACLByteMatchStatementPositionalConstraint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-searchstring
wafwaclbmsSearchString :: Lens' WAFv2WebACLByteMatchStatement (Maybe (Val Text))
wafwaclbmsSearchString = lens _wAFv2WebACLByteMatchStatementSearchString (\s a -> s { _wAFv2WebACLByteMatchStatementSearchString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-searchstringbase64
wafwaclbmsSearchStringBase64 :: Lens' WAFv2WebACLByteMatchStatement (Maybe (Val Text))
wafwaclbmsSearchStringBase64 = lens _wAFv2WebACLByteMatchStatementSearchStringBase64 (\s a -> s { _wAFv2WebACLByteMatchStatementSearchStringBase64 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-bytematchstatement.html#cfn-wafv2-webacl-bytematchstatement-texttransformations
wafwaclbmsTextTransformations :: Lens' WAFv2WebACLByteMatchStatement [WAFv2WebACLTextTransformation]
wafwaclbmsTextTransformations = lens _wAFv2WebACLByteMatchStatementTextTransformations (\s a -> s { _wAFv2WebACLByteMatchStatementTextTransformations = a })
