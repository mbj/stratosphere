{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupByteMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupFieldToMatch
import Stratosphere.ResourceProperties.WAFv2RuleGroupTextTransformation

-- | Full data type definition for WAFv2RuleGroupByteMatchStatement. See
-- 'waFv2RuleGroupByteMatchStatement' for a more convenient constructor.
data WAFv2RuleGroupByteMatchStatement =
  WAFv2RuleGroupByteMatchStatement
  { _wAFv2RuleGroupByteMatchStatementFieldToMatch :: WAFv2RuleGroupFieldToMatch
  , _wAFv2RuleGroupByteMatchStatementPositionalConstraint :: Val Text
  , _wAFv2RuleGroupByteMatchStatementSearchString :: Val Text
  , _wAFv2RuleGroupByteMatchStatementSearchStringBase64 :: Maybe (Val Text)
  , _wAFv2RuleGroupByteMatchStatementTextTransformations :: [WAFv2RuleGroupTextTransformation]
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupByteMatchStatement where
  toJSON WAFv2RuleGroupByteMatchStatement{..} =
    object $
    catMaybes
    [ (Just . ("FieldToMatch",) . toJSON) _wAFv2RuleGroupByteMatchStatementFieldToMatch
    , (Just . ("PositionalConstraint",) . toJSON) _wAFv2RuleGroupByteMatchStatementPositionalConstraint
    , (Just . ("SearchString",) . toJSON) _wAFv2RuleGroupByteMatchStatementSearchString
    , fmap (("SearchStringBase64",) . toJSON) _wAFv2RuleGroupByteMatchStatementSearchStringBase64
    , (Just . ("TextTransformations",) . toJSON) _wAFv2RuleGroupByteMatchStatementTextTransformations
    ]

-- | Constructor for 'WAFv2RuleGroupByteMatchStatement' containing required
-- fields as arguments.
waFv2RuleGroupByteMatchStatement
  :: WAFv2RuleGroupFieldToMatch -- ^ 'wafrgbmsFieldToMatch'
  -> Val Text -- ^ 'wafrgbmsPositionalConstraint'
  -> Val Text -- ^ 'wafrgbmsSearchString'
  -> [WAFv2RuleGroupTextTransformation] -- ^ 'wafrgbmsTextTransformations'
  -> WAFv2RuleGroupByteMatchStatement
waFv2RuleGroupByteMatchStatement fieldToMatcharg positionalConstraintarg searchStringarg textTransformationsarg =
  WAFv2RuleGroupByteMatchStatement
  { _wAFv2RuleGroupByteMatchStatementFieldToMatch = fieldToMatcharg
  , _wAFv2RuleGroupByteMatchStatementPositionalConstraint = positionalConstraintarg
  , _wAFv2RuleGroupByteMatchStatementSearchString = searchStringarg
  , _wAFv2RuleGroupByteMatchStatementSearchStringBase64 = Nothing
  , _wAFv2RuleGroupByteMatchStatementTextTransformations = textTransformationsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-fieldtomatch
wafrgbmsFieldToMatch :: Lens' WAFv2RuleGroupByteMatchStatement WAFv2RuleGroupFieldToMatch
wafrgbmsFieldToMatch = lens _wAFv2RuleGroupByteMatchStatementFieldToMatch (\s a -> s { _wAFv2RuleGroupByteMatchStatementFieldToMatch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-positionalconstraint
wafrgbmsPositionalConstraint :: Lens' WAFv2RuleGroupByteMatchStatement (Val Text)
wafrgbmsPositionalConstraint = lens _wAFv2RuleGroupByteMatchStatementPositionalConstraint (\s a -> s { _wAFv2RuleGroupByteMatchStatementPositionalConstraint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-searchstring
wafrgbmsSearchString :: Lens' WAFv2RuleGroupByteMatchStatement (Val Text)
wafrgbmsSearchString = lens _wAFv2RuleGroupByteMatchStatementSearchString (\s a -> s { _wAFv2RuleGroupByteMatchStatementSearchString = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-searchstringbase64
wafrgbmsSearchStringBase64 :: Lens' WAFv2RuleGroupByteMatchStatement (Maybe (Val Text))
wafrgbmsSearchStringBase64 = lens _wAFv2RuleGroupByteMatchStatementSearchStringBase64 (\s a -> s { _wAFv2RuleGroupByteMatchStatementSearchStringBase64 = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-bytematchstatement.html#cfn-wafv2-rulegroup-bytematchstatement-texttransformations
wafrgbmsTextTransformations :: Lens' WAFv2RuleGroupByteMatchStatement [WAFv2RuleGroupTextTransformation]
wafrgbmsTextTransformations = lens _wAFv2RuleGroupByteMatchStatementTextTransformations (\s a -> s { _wAFv2RuleGroupByteMatchStatementTextTransformations = a })
