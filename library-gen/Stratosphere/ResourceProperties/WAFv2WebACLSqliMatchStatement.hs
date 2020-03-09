{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLSqliMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformation

-- | Full data type definition for WAFv2WebACLSqliMatchStatement. See
-- 'waFv2WebACLSqliMatchStatement' for a more convenient constructor.
data WAFv2WebACLSqliMatchStatement =
  WAFv2WebACLSqliMatchStatement
  { _wAFv2WebACLSqliMatchStatementFieldToMatch :: WAFv2WebACLFieldToMatch
  , _wAFv2WebACLSqliMatchStatementTextTransformations :: [WAFv2WebACLTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLSqliMatchStatement where
  toJSON WAFv2WebACLSqliMatchStatement{..} =
    object $
    catMaybes
    [ (Just . ("FieldToMatch",) . toJSON) _wAFv2WebACLSqliMatchStatementFieldToMatch
    , (Just . ("TextTransformations",) . toJSON) _wAFv2WebACLSqliMatchStatementTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLSqliMatchStatement' containing required
-- fields as arguments.
waFv2WebACLSqliMatchStatement
  :: WAFv2WebACLFieldToMatch -- ^ 'wafwaclsmsFieldToMatch'
  -> [WAFv2WebACLTextTransformation] -- ^ 'wafwaclsmsTextTransformations'
  -> WAFv2WebACLSqliMatchStatement
waFv2WebACLSqliMatchStatement fieldToMatcharg textTransformationsarg =
  WAFv2WebACLSqliMatchStatement
  { _wAFv2WebACLSqliMatchStatementFieldToMatch = fieldToMatcharg
  , _wAFv2WebACLSqliMatchStatementTextTransformations = textTransformationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html#cfn-wafv2-webacl-sqlimatchstatement-fieldtomatch
wafwaclsmsFieldToMatch :: Lens' WAFv2WebACLSqliMatchStatement WAFv2WebACLFieldToMatch
wafwaclsmsFieldToMatch = lens _wAFv2WebACLSqliMatchStatementFieldToMatch (\s a -> s { _wAFv2WebACLSqliMatchStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html#cfn-wafv2-webacl-sqlimatchstatement-texttransformations
wafwaclsmsTextTransformations :: Lens' WAFv2WebACLSqliMatchStatement [WAFv2WebACLTextTransformation]
wafwaclsmsTextTransformations = lens _wAFv2WebACLSqliMatchStatementTextTransformations (\s a -> s { _wAFv2WebACLSqliMatchStatementTextTransformations = a })
