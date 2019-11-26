{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupSqliMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch
import Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformations

-- | Full data type definition for WAFv2RuleGroupSqliMatchStatement. See
-- 'waFv2RuleGroupSqliMatchStatement' for a more convenient constructor.
data WAFv2RuleGroupSqliMatchStatement =
  WAFv2RuleGroupSqliMatchStatement
  { _wAFv2RuleGroupSqliMatchStatementFieldToMatch :: Maybe WAFv2RuleGroupFieldToMatch
  , _wAFv2RuleGroupSqliMatchStatementTextTransformations :: Maybe WAFv2RuleGroupTextTransformations
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupSqliMatchStatement where
  toJSON WAFv2RuleGroupSqliMatchStatement{..} =
    object $
    catMaybes
    [ fmap (("FieldToMatch",) . toJSON) _wAFv2RuleGroupSqliMatchStatementFieldToMatch
    , fmap (("TextTransformations",) . toJSON) _wAFv2RuleGroupSqliMatchStatementTextTransformations
    ]

-- | Constructor for 'WAFv2RuleGroupSqliMatchStatement' containing required
-- fields as arguments.
waFv2RuleGroupSqliMatchStatement
  :: WAFv2RuleGroupSqliMatchStatement
waFv2RuleGroupSqliMatchStatement  =
  WAFv2RuleGroupSqliMatchStatement
  { _wAFv2RuleGroupSqliMatchStatementFieldToMatch = Nothing
  , _wAFv2RuleGroupSqliMatchStatementTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html#cfn-wafv2-rulegroup-sqlimatchstatement-fieldtomatch
wafrgsmsFieldToMatch :: Lens' WAFv2RuleGroupSqliMatchStatement (Maybe WAFv2RuleGroupFieldToMatch)
wafrgsmsFieldToMatch = lens _wAFv2RuleGroupSqliMatchStatementFieldToMatch (\s a -> s { _wAFv2RuleGroupSqliMatchStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-sqlimatchstatement.html#cfn-wafv2-rulegroup-sqlimatchstatement-texttransformations
wafrgsmsTextTransformations :: Lens' WAFv2RuleGroupSqliMatchStatement (Maybe WAFv2RuleGroupTextTransformations)
wafrgsmsTextTransformations = lens _wAFv2RuleGroupSqliMatchStatementTextTransformations (\s a -> s { _wAFv2RuleGroupSqliMatchStatementTextTransformations = a })
