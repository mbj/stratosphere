{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html

module Stratosphere.ResourceProperties.WAFv2WebACLSizeConstraintStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLFieldToMatch
import Stratosphere.ResourceProperties.WAFv2WebACLTextTransformations

-- | Full data type definition for WAFv2WebACLSizeConstraintStatement. See
-- 'waFv2WebACLSizeConstraintStatement' for a more convenient constructor.
data WAFv2WebACLSizeConstraintStatement =
  WAFv2WebACLSizeConstraintStatement
  { _wAFv2WebACLSizeConstraintStatementComparisonOperator :: Maybe (Val Text)
  , _wAFv2WebACLSizeConstraintStatementFieldToMatch :: Maybe WAFv2WebACLFieldToMatch
  , _wAFv2WebACLSizeConstraintStatementSize :: Maybe (Val Integer)
  , _wAFv2WebACLSizeConstraintStatementTextTransformations :: Maybe WAFv2WebACLTextTransformations
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLSizeConstraintStatement where
  toJSON WAFv2WebACLSizeConstraintStatement{..} =
    object $
    catMaybes
    [ fmap (("ComparisonOperator",) . toJSON) _wAFv2WebACLSizeConstraintStatementComparisonOperator
    , fmap (("FieldToMatch",) . toJSON) _wAFv2WebACLSizeConstraintStatementFieldToMatch
    , fmap (("Size",) . toJSON) _wAFv2WebACLSizeConstraintStatementSize
    , fmap (("TextTransformations",) . toJSON) _wAFv2WebACLSizeConstraintStatementTextTransformations
    ]

-- | Constructor for 'WAFv2WebACLSizeConstraintStatement' containing required
-- fields as arguments.
waFv2WebACLSizeConstraintStatement
  :: WAFv2WebACLSizeConstraintStatement
waFv2WebACLSizeConstraintStatement  =
  WAFv2WebACLSizeConstraintStatement
  { _wAFv2WebACLSizeConstraintStatementComparisonOperator = Nothing
  , _wAFv2WebACLSizeConstraintStatementFieldToMatch = Nothing
  , _wAFv2WebACLSizeConstraintStatementSize = Nothing
  , _wAFv2WebACLSizeConstraintStatementTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-comparisonoperator
wafwaclscsComparisonOperator :: Lens' WAFv2WebACLSizeConstraintStatement (Maybe (Val Text))
wafwaclscsComparisonOperator = lens _wAFv2WebACLSizeConstraintStatementComparisonOperator (\s a -> s { _wAFv2WebACLSizeConstraintStatementComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-fieldtomatch
wafwaclscsFieldToMatch :: Lens' WAFv2WebACLSizeConstraintStatement (Maybe WAFv2WebACLFieldToMatch)
wafwaclscsFieldToMatch = lens _wAFv2WebACLSizeConstraintStatementFieldToMatch (\s a -> s { _wAFv2WebACLSizeConstraintStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-size
wafwaclscsSize :: Lens' WAFv2WebACLSizeConstraintStatement (Maybe (Val Integer))
wafwaclscsSize = lens _wAFv2WebACLSizeConstraintStatementSize (\s a -> s { _wAFv2WebACLSizeConstraintStatementSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-sizeconstraintstatement.html#cfn-wafv2-webacl-sizeconstraintstatement-texttransformations
wafwaclscsTextTransformations :: Lens' WAFv2WebACLSizeConstraintStatement (Maybe WAFv2WebACLTextTransformations)
wafwaclscsTextTransformations = lens _wAFv2WebACLSizeConstraintStatementTextTransformations (\s a -> s { _wAFv2WebACLSizeConstraintStatementTextTransformations = a })
