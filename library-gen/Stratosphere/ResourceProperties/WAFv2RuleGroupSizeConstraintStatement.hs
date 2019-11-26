{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupSizeConstraintStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch
import Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformations

-- | Full data type definition for WAFv2RuleGroupSizeConstraintStatement. See
-- 'waFv2RuleGroupSizeConstraintStatement' for a more convenient
-- constructor.
data WAFv2RuleGroupSizeConstraintStatement =
  WAFv2RuleGroupSizeConstraintStatement
  { _wAFv2RuleGroupSizeConstraintStatementComparisonOperator :: Maybe (Val Text)
  , _wAFv2RuleGroupSizeConstraintStatementFieldToMatch :: Maybe WAFv2RuleGroupFieldToMatch
  , _wAFv2RuleGroupSizeConstraintStatementSize :: Maybe (Val Integer)
  , _wAFv2RuleGroupSizeConstraintStatementTextTransformations :: Maybe WAFv2RuleGroupTextTransformations
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupSizeConstraintStatement where
  toJSON WAFv2RuleGroupSizeConstraintStatement{..} =
    object $
    catMaybes
    [ fmap (("ComparisonOperator",) . toJSON) _wAFv2RuleGroupSizeConstraintStatementComparisonOperator
    , fmap (("FieldToMatch",) . toJSON) _wAFv2RuleGroupSizeConstraintStatementFieldToMatch
    , fmap (("Size",) . toJSON) _wAFv2RuleGroupSizeConstraintStatementSize
    , fmap (("TextTransformations",) . toJSON) _wAFv2RuleGroupSizeConstraintStatementTextTransformations
    ]

-- | Constructor for 'WAFv2RuleGroupSizeConstraintStatement' containing
-- required fields as arguments.
waFv2RuleGroupSizeConstraintStatement
  :: WAFv2RuleGroupSizeConstraintStatement
waFv2RuleGroupSizeConstraintStatement  =
  WAFv2RuleGroupSizeConstraintStatement
  { _wAFv2RuleGroupSizeConstraintStatementComparisonOperator = Nothing
  , _wAFv2RuleGroupSizeConstraintStatementFieldToMatch = Nothing
  , _wAFv2RuleGroupSizeConstraintStatementSize = Nothing
  , _wAFv2RuleGroupSizeConstraintStatementTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-comparisonoperator
wafrgscsComparisonOperator :: Lens' WAFv2RuleGroupSizeConstraintStatement (Maybe (Val Text))
wafrgscsComparisonOperator = lens _wAFv2RuleGroupSizeConstraintStatementComparisonOperator (\s a -> s { _wAFv2RuleGroupSizeConstraintStatementComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-fieldtomatch
wafrgscsFieldToMatch :: Lens' WAFv2RuleGroupSizeConstraintStatement (Maybe WAFv2RuleGroupFieldToMatch)
wafrgscsFieldToMatch = lens _wAFv2RuleGroupSizeConstraintStatementFieldToMatch (\s a -> s { _wAFv2RuleGroupSizeConstraintStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-size
wafrgscsSize :: Lens' WAFv2RuleGroupSizeConstraintStatement (Maybe (Val Integer))
wafrgscsSize = lens _wAFv2RuleGroupSizeConstraintStatementSize (\s a -> s { _wAFv2RuleGroupSizeConstraintStatementSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-texttransformations
wafrgscsTextTransformations :: Lens' WAFv2RuleGroupSizeConstraintStatement (Maybe WAFv2RuleGroupTextTransformations)
wafrgscsTextTransformations = lens _wAFv2RuleGroupSizeConstraintStatementTextTransformations (\s a -> s { _wAFv2RuleGroupSizeConstraintStatementTextTransformations = a })
