{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupByteMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch
import Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformations

-- | Full data type definition for WAFv2RuleGroupByteMatchStatement. See
-- 'waFv2RuleGroupByteMatchStatement' for a more convenient constructor.
data WAFv2RuleGroupByteMatchStatement =
  WAFv2RuleGroupByteMatchStatement
  { _wAFv2RuleGroupByteMatchStatementFieldToMatch :: Maybe WAFv2RuleGroupFieldToMatch
  , _wAFv2RuleGroupByteMatchStatementPositionalConstraint :: Maybe (Val Text)
  , _wAFv2RuleGroupByteMatchStatementSearchString :: Maybe (Val Text)
  , _wAFv2RuleGroupByteMatchStatementSearchStringBase64 :: Maybe (Val Text)
  , _wAFv2RuleGroupByteMatchStatementTextTransformations :: Maybe WAFv2RuleGroupTextTransformations
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupByteMatchStatement where
  toJSON WAFv2RuleGroupByteMatchStatement{..} =
    object $
    catMaybes
    [ fmap (("FieldToMatch",) . toJSON) _wAFv2RuleGroupByteMatchStatementFieldToMatch
    , fmap (("PositionalConstraint",) . toJSON) _wAFv2RuleGroupByteMatchStatementPositionalConstraint
    , fmap (("SearchString",) . toJSON) _wAFv2RuleGroupByteMatchStatementSearchString
    , fmap (("SearchStringBase64",) . toJSON) _wAFv2RuleGroupByteMatchStatementSearchStringBase64
    , fmap (("TextTransformations",) . toJSON) _wAFv2RuleGroupByteMatchStatementTextTransformations
    ]

-- | Constructor for 'WAFv2RuleGroupByteMatchStatement' containing required
-- fields as arguments.
waFv2RuleGroupByteMatchStatement
  :: WAFv2RuleGroupByteMatchStatement
waFv2RuleGroupByteMatchStatement  =
  WAFv2RuleGroupByteMatchStatement
  { _wAFv2RuleGroupByteMatchStatementFieldToMatch = Nothing
  , _wAFv2RuleGroupByteMatchStatementPositionalConstraint = Nothing
  , _wAFv2RuleGroupByteMatchStatementSearchString = Nothing
  , _wAFv2RuleGroupByteMatchStatementSearchStringBase64 = Nothing
  , _wAFv2RuleGroupByteMatchStatementTextTransformations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-fieldtomatch
wafrgbmsFieldToMatch :: Lens' WAFv2RuleGroupByteMatchStatement (Maybe WAFv2RuleGroupFieldToMatch)
wafrgbmsFieldToMatch = lens _wAFv2RuleGroupByteMatchStatementFieldToMatch (\s a -> s { _wAFv2RuleGroupByteMatchStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-positionalconstraint
wafrgbmsPositionalConstraint :: Lens' WAFv2RuleGroupByteMatchStatement (Maybe (Val Text))
wafrgbmsPositionalConstraint = lens _wAFv2RuleGroupByteMatchStatementPositionalConstraint (\s a -> s { _wAFv2RuleGroupByteMatchStatementPositionalConstraint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-searchstring
wafrgbmsSearchString :: Lens' WAFv2RuleGroupByteMatchStatement (Maybe (Val Text))
wafrgbmsSearchString = lens _wAFv2RuleGroupByteMatchStatementSearchString (\s a -> s { _wAFv2RuleGroupByteMatchStatementSearchString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-searchstringbase64
wafrgbmsSearchStringBase64 :: Lens' WAFv2RuleGroupByteMatchStatement (Maybe (Val Text))
wafrgbmsSearchStringBase64 = lens _wAFv2RuleGroupByteMatchStatementSearchStringBase64 (\s a -> s { _wAFv2RuleGroupByteMatchStatementSearchStringBase64 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-texttransformations
wafrgbmsTextTransformations :: Lens' WAFv2RuleGroupByteMatchStatement (Maybe WAFv2RuleGroupTextTransformations)
wafrgbmsTextTransformations = lens _wAFv2RuleGroupByteMatchStatementTextTransformations (\s a -> s { _wAFv2RuleGroupByteMatchStatementTextTransformations = a })
