{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-xssmatchstatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupXssMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch
import Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformations

-- | Full data type definition for WAFv2RuleGroupXssMatchStatement. See
-- 'waFv2RuleGroupXssMatchStatement' for a more convenient constructor.
data WAFv2RuleGroupXssMatchStatement =
  WAFv2RuleGroupXssMatchStatement
  { _wAFv2RuleGroupXssMatchStatementFieldToMatch :: Maybe WAFv2RuleGroupFieldToMatch
  , _wAFv2RuleGroupXssMatchStatementTextTransformations :: Maybe WAFv2RuleGroupTextTransformations
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupXssMatchStatement where
  toJSON WAFv2RuleGroupXssMatchStatement{..} =
    object $
    catMaybes
    [ fmap (("FieldToMatch",) . toJSON) _wAFv2RuleGroupXssMatchStatementFieldToMatch
    , fmap (("TextTransformations",) . toJSON) _wAFv2RuleGroupXssMatchStatementTextTransformations
    ]

-- | Constructor for 'WAFv2RuleGroupXssMatchStatement' containing required
-- fields as arguments.
waFv2RuleGroupXssMatchStatement
  :: WAFv2RuleGroupXssMatchStatement
waFv2RuleGroupXssMatchStatement  =
  WAFv2RuleGroupXssMatchStatement
  { _wAFv2RuleGroupXssMatchStatementFieldToMatch = Nothing
  , _wAFv2RuleGroupXssMatchStatementTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-xssmatchstatement.html#cfn-wafv2-rulegroup-xssmatchstatement-fieldtomatch
wafrgxmsFieldToMatch :: Lens' WAFv2RuleGroupXssMatchStatement (Maybe WAFv2RuleGroupFieldToMatch)
wafrgxmsFieldToMatch = lens _wAFv2RuleGroupXssMatchStatementFieldToMatch (\s a -> s { _wAFv2RuleGroupXssMatchStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-xssmatchstatement.html#cfn-wafv2-rulegroup-xssmatchstatement-texttransformations
wafrgxmsTextTransformations :: Lens' WAFv2RuleGroupXssMatchStatement (Maybe WAFv2RuleGroupTextTransformations)
wafrgxmsTextTransformations = lens _wAFv2RuleGroupXssMatchStatementTextTransformations (\s a -> s { _wAFv2RuleGroupXssMatchStatementTextTransformations = a })
