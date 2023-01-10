
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupSizeConstraintStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch
import Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformation

-- | Full data type definition for WAFv2RuleGroupSizeConstraintStatement. See
-- 'waFv2RuleGroupSizeConstraintStatement' for a more convenient
-- constructor.
data WAFv2RuleGroupSizeConstraintStatement =
  WAFv2RuleGroupSizeConstraintStatement
  { _wAFv2RuleGroupSizeConstraintStatementComparisonOperator :: Val Text
  , _wAFv2RuleGroupSizeConstraintStatementFieldToMatch :: WAFv2RuleGroupFieldToMatch
  , _wAFv2RuleGroupSizeConstraintStatementSize :: Val Integer
  , _wAFv2RuleGroupSizeConstraintStatementTextTransformations :: [WAFv2RuleGroupTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupSizeConstraintStatement where
  toJSON WAFv2RuleGroupSizeConstraintStatement{..} =
    object $
    catMaybes
    [ (Just . ("ComparisonOperator",) . toJSON) _wAFv2RuleGroupSizeConstraintStatementComparisonOperator
    , (Just . ("FieldToMatch",) . toJSON) _wAFv2RuleGroupSizeConstraintStatementFieldToMatch
    , (Just . ("Size",) . toJSON) _wAFv2RuleGroupSizeConstraintStatementSize
    , (Just . ("TextTransformations",) . toJSON) _wAFv2RuleGroupSizeConstraintStatementTextTransformations
    ]

-- | Constructor for 'WAFv2RuleGroupSizeConstraintStatement' containing
-- required fields as arguments.
waFv2RuleGroupSizeConstraintStatement
  :: Val Text -- ^ 'wafrgscsComparisonOperator'
  -> WAFv2RuleGroupFieldToMatch -- ^ 'wafrgscsFieldToMatch'
  -> Val Integer -- ^ 'wafrgscsSize'
  -> [WAFv2RuleGroupTextTransformation] -- ^ 'wafrgscsTextTransformations'
  -> WAFv2RuleGroupSizeConstraintStatement
waFv2RuleGroupSizeConstraintStatement comparisonOperatorarg fieldToMatcharg sizearg textTransformationsarg =
  WAFv2RuleGroupSizeConstraintStatement
  { _wAFv2RuleGroupSizeConstraintStatementComparisonOperator = comparisonOperatorarg
  , _wAFv2RuleGroupSizeConstraintStatementFieldToMatch = fieldToMatcharg
  , _wAFv2RuleGroupSizeConstraintStatementSize = sizearg
  , _wAFv2RuleGroupSizeConstraintStatementTextTransformations = textTransformationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-comparisonoperator
wafrgscsComparisonOperator :: Lens' WAFv2RuleGroupSizeConstraintStatement (Val Text)
wafrgscsComparisonOperator = lens _wAFv2RuleGroupSizeConstraintStatementComparisonOperator (\s a -> s { _wAFv2RuleGroupSizeConstraintStatementComparisonOperator = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-fieldtomatch
wafrgscsFieldToMatch :: Lens' WAFv2RuleGroupSizeConstraintStatement WAFv2RuleGroupFieldToMatch
wafrgscsFieldToMatch = lens _wAFv2RuleGroupSizeConstraintStatementFieldToMatch (\s a -> s { _wAFv2RuleGroupSizeConstraintStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-size
wafrgscsSize :: Lens' WAFv2RuleGroupSizeConstraintStatement (Val Integer)
wafrgscsSize = lens _wAFv2RuleGroupSizeConstraintStatementSize (\s a -> s { _wAFv2RuleGroupSizeConstraintStatementSize = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sizeconstraintstatement.html#cfn-wafv2-rulegroup-sizeconstraintstatement-texttransformations
wafrgscsTextTransformations :: Lens' WAFv2RuleGroupSizeConstraintStatement [WAFv2RuleGroupTextTransformation]
wafrgscsTextTransformations = lens _wAFv2RuleGroupSizeConstraintStatementTextTransformations (\s a -> s { _wAFv2RuleGroupSizeConstraintStatementTextTransformations = a })
