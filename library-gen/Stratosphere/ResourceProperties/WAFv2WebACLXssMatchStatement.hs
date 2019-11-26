{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLXssMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformations

-- | Full data type definition for WAFv2WebACLXssMatchStatement. See
-- 'waFv2WebACLXssMatchStatement' for a more convenient constructor.
data WAFv2WebACLXssMatchStatement =
  WAFv2WebACLXssMatchStatement
  { _wAFv2WebACLXssMatchStatementFieldToMatch :: Maybe WAFv2WebACLFieldToMatch
  , _wAFv2WebACLXssMatchStatementTextTransformations :: Maybe WAFv2WebACLTextTransformations
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLXssMatchStatement where
  toJSON WAFv2WebACLXssMatchStatement{..} =
    object $
    catMaybes
    [ fmap (("FieldToMatch",) . toJSON) _wAFv2WebACLXssMatchStatementFieldToMatch
    , fmap (("TextTransformations",) . toJSON) _wAFv2WebACLXssMatchStatementTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLXssMatchStatement' containing required fields
-- as arguments.
waFv2WebACLXssMatchStatement
  :: WAFv2WebACLXssMatchStatement
waFv2WebACLXssMatchStatement  =
  WAFv2WebACLXssMatchStatement
  { _wAFv2WebACLXssMatchStatementFieldToMatch = Nothing
  , _wAFv2WebACLXssMatchStatementTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-fieldtomatch
wafwaclxmsFieldToMatch :: Lens' WAFv2WebACLXssMatchStatement (Maybe WAFv2WebACLFieldToMatch)
wafwaclxmsFieldToMatch = lens _wAFv2WebACLXssMatchStatementFieldToMatch (\s a -> s { _wAFv2WebACLXssMatchStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-xssmatchstatement.html#cfn-wafv2-webacl-xssmatchstatement-texttransformations
wafwaclxmsTextTransformations :: Lens' WAFv2WebACLXssMatchStatement (Maybe WAFv2WebACLTextTransformations)
wafwaclxmsTextTransformations = lens _wAFv2WebACLXssMatchStatementTextTransformations (\s a -> s { _wAFv2WebACLXssMatchStatementTextTransformations = a })
