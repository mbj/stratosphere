{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLSqliMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformations

-- | Full data type definition for WAFv2WebACLSqliMatchStatement. See
-- 'waFv2WebACLSqliMatchStatement' for a more convenient constructor.
data WAFv2WebACLSqliMatchStatement =
  WAFv2WebACLSqliMatchStatement
  { _wAFv2WebACLSqliMatchStatementFieldToMatch :: Maybe WAFv2WebACLFieldToMatch
  , _wAFv2WebACLSqliMatchStatementTextTransformations :: Maybe WAFv2WebACLTextTransformations
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLSqliMatchStatement where
  toJSON WAFv2WebACLSqliMatchStatement{..} =
    object $
    catMaybes
    [ fmap (("FieldToMatch",) . toJSON) _wAFv2WebACLSqliMatchStatementFieldToMatch
    , fmap (("TextTransformations",) . toJSON) _wAFv2WebACLSqliMatchStatementTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLSqliMatchStatement' containing required
-- fields as arguments.
waFv2WebACLSqliMatchStatement
  :: WAFv2WebACLSqliMatchStatement
waFv2WebACLSqliMatchStatement  =
  WAFv2WebACLSqliMatchStatement
  { _wAFv2WebACLSqliMatchStatementFieldToMatch = Nothing
  , _wAFv2WebACLSqliMatchStatementTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html#cfn-wafv2-webacl-sqlimatchstatement-fieldtomatch
wafwaclsmsFieldToMatch :: Lens' WAFv2WebACLSqliMatchStatement (Maybe WAFv2WebACLFieldToMatch)
wafwaclsmsFieldToMatch = lens _wAFv2WebACLSqliMatchStatementFieldToMatch (\s a -> s { _wAFv2WebACLSqliMatchStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sqlimatchstatement.html#cfn-wafv2-webacl-sqlimatchstatement-texttransformations
wafwaclsmsTextTransformations :: Lens' WAFv2WebACLSqliMatchStatement (Maybe WAFv2WebACLTextTransformations)
wafwaclsmsTextTransformations = lens _wAFv2WebACLSqliMatchStatementTextTransformations (\s a -> s { _wAFv2WebACLSqliMatchStatementTextTransformations = a })
