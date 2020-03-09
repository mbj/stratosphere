{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLSizeConstraintStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformation

-- | Full data type definition for WAFv2WebACLSizeConstraintStatement. See
-- 'waFv2WebACLSizeConstraintStatement' for a more convenient constructor.
data WAFv2WebACLSizeConstraintStatement =
  WAFv2WebACLSizeConstraintStatement
  { _wAFv2WebACLSizeConstraintStatementComparisonOperator :: Val Text
  , _wAFv2WebACLSizeConstraintStatementFieldToMatch :: WAFv2WebACLFieldToMatch
  , _wAFv2WebACLSizeConstraintStatementSize :: Val Integer
  , _wAFv2WebACLSizeConstraintStatementTextTransformations :: [WAFv2WebACLTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLSizeConstraintStatement where
  toJSON WAFv2WebACLSizeConstraintStatement{..} =
    object $
    catMaybes
    [ (Just . ("ComparisonOperator",) . toJSON) _wAFv2WebACLSizeConstraintStatementComparisonOperator
    , (Just . ("FieldToMatch",) . toJSON) _wAFv2WebACLSizeConstraintStatementFieldToMatch
    , (Just . ("Size",) . toJSON) _wAFv2WebACLSizeConstraintStatementSize
    , (Just . ("TextTransformations",) . toJSON) _wAFv2WebACLSizeConstraintStatementTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLSizeConstraintStatement' containing required
-- fields as arguments.
waFv2WebACLSizeConstraintStatement
  :: Val Text -- ^ 'wafwaclscsComparisonOperator'
  -> WAFv2WebACLFieldToMatch -- ^ 'wafwaclscsFieldToMatch'
  -> Val Integer -- ^ 'wafwaclscsSize'
  -> [WAFv2WebACLTextTransformation] -- ^ 'wafwaclscsTextTransformations'
  -> WAFv2WebACLSizeConstraintStatement
waFv2WebACLSizeConstraintStatement comparisonOperatorarg fieldToMatcharg sizearg textTransformationsarg =
  WAFv2WebACLSizeConstraintStatement
  { _wAFv2WebACLSizeConstraintStatementComparisonOperator = comparisonOperatorarg
  , _wAFv2WebACLSizeConstraintStatementFieldToMatch = fieldToMatcharg
  , _wAFv2WebACLSizeConstraintStatementSize = sizearg
  , _wAFv2WebACLSizeConstraintStatementTextTransformations = textTransformationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-comparisonoperator
wafwaclscsComparisonOperator :: Lens' WAFv2WebACLSizeConstraintStatement (Val Text)
wafwaclscsComparisonOperator = lens _wAFv2WebACLSizeConstraintStatementComparisonOperator (\s a -> s { _wAFv2WebACLSizeConstraintStatementComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-fieldtomatch
wafwaclscsFieldToMatch :: Lens' WAFv2WebACLSizeConstraintStatement WAFv2WebACLFieldToMatch
wafwaclscsFieldToMatch = lens _wAFv2WebACLSizeConstraintStatementFieldToMatch (\s a -> s { _wAFv2WebACLSizeConstraintStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-size
wafwaclscsSize :: Lens' WAFv2WebACLSizeConstraintStatement (Val Integer)
wafwaclscsSize = lens _wAFv2WebACLSizeConstraintStatementSize (\s a -> s { _wAFv2WebACLSizeConstraintStatementSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-texttransformations
wafwaclscsTextTransformations :: Lens' WAFv2WebACLSizeConstraintStatement [WAFv2WebACLTextTransformation]
wafwaclscsTextTransformations = lens _wAFv2WebACLSizeConstraintStatementTextTransformations (\s a -> s { _wAFv2WebACLSizeConstraintStatementTextTransformations = a })
