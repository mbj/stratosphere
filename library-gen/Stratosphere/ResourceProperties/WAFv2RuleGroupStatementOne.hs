{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupStatementOne where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupAndStatementOne
import Stratosphere.ResourceProperties.WAFv2RuleGroupByteMatchStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupGeoMatchStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupIPSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupNotStatementOne
import Stratosphere.ResourceProperties.WAFv2RuleGroupOrStatementOne
import Stratosphere.ResourceProperties.WAFv2RuleGroupRateBasedStatementOne
import Stratosphere.ResourceProperties.WAFv2RuleGroupRegexPatternSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupSizeConstraintStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupSqliMatchStatement
import Stratosphere.ResourceProperties.WAFv2RuleGroupXssMatchStatement

-- | Full data type definition for WAFv2RuleGroupStatementOne. See
-- 'waFv2RuleGroupStatementOne' for a more convenient constructor.
data WAFv2RuleGroupStatementOne =
  WAFv2RuleGroupStatementOne
  { _wAFv2RuleGroupStatementOneAndStatement :: Maybe WAFv2RuleGroupAndStatementOne
  , _wAFv2RuleGroupStatementOneByteMatchStatement :: Maybe WAFv2RuleGroupByteMatchStatement
  , _wAFv2RuleGroupStatementOneGeoMatchStatement :: Maybe WAFv2RuleGroupGeoMatchStatement
  , _wAFv2RuleGroupStatementOneIPSetReferenceStatement :: Maybe WAFv2RuleGroupIPSetReferenceStatement
  , _wAFv2RuleGroupStatementOneNotStatement :: Maybe WAFv2RuleGroupNotStatementOne
  , _wAFv2RuleGroupStatementOneOrStatement :: Maybe WAFv2RuleGroupOrStatementOne
  , _wAFv2RuleGroupStatementOneRateBasedStatement :: Maybe WAFv2RuleGroupRateBasedStatementOne
  , _wAFv2RuleGroupStatementOneRegexPatternSetReferenceStatement :: Maybe WAFv2RuleGroupRegexPatternSetReferenceStatement
  , _wAFv2RuleGroupStatementOneSizeConstraintStatement :: Maybe WAFv2RuleGroupSizeConstraintStatement
  , _wAFv2RuleGroupStatementOneSqliMatchStatement :: Maybe WAFv2RuleGroupSqliMatchStatement
  , _wAFv2RuleGroupStatementOneXssMatchStatement :: Maybe WAFv2RuleGroupXssMatchStatement
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupStatementOne where
  toJSON WAFv2RuleGroupStatementOne{..} =
    object $
    catMaybes
    [ fmap (("AndStatement",) . toJSON) _wAFv2RuleGroupStatementOneAndStatement
    , fmap (("ByteMatchStatement",) . toJSON) _wAFv2RuleGroupStatementOneByteMatchStatement
    , fmap (("GeoMatchStatement",) . toJSON) _wAFv2RuleGroupStatementOneGeoMatchStatement
    , fmap (("IPSetReferenceStatement",) . toJSON) _wAFv2RuleGroupStatementOneIPSetReferenceStatement
    , fmap (("NotStatement",) . toJSON) _wAFv2RuleGroupStatementOneNotStatement
    , fmap (("OrStatement",) . toJSON) _wAFv2RuleGroupStatementOneOrStatement
    , fmap (("RateBasedStatement",) . toJSON) _wAFv2RuleGroupStatementOneRateBasedStatement
    , fmap (("RegexPatternSetReferenceStatement",) . toJSON) _wAFv2RuleGroupStatementOneRegexPatternSetReferenceStatement
    , fmap (("SizeConstraintStatement",) . toJSON) _wAFv2RuleGroupStatementOneSizeConstraintStatement
    , fmap (("SqliMatchStatement",) . toJSON) _wAFv2RuleGroupStatementOneSqliMatchStatement
    , fmap (("XssMatchStatement",) . toJSON) _wAFv2RuleGroupStatementOneXssMatchStatement
    ]

-- | Constructor for 'WAFv2RuleGroupStatementOne' containing required fields
-- as arguments.
waFv2RuleGroupStatementOne
  :: WAFv2RuleGroupStatementOne
waFv2RuleGroupStatementOne  =
  WAFv2RuleGroupStatementOne
  { _wAFv2RuleGroupStatementOneAndStatement = Nothing
  , _wAFv2RuleGroupStatementOneByteMatchStatement = Nothing
  , _wAFv2RuleGroupStatementOneGeoMatchStatement = Nothing
  , _wAFv2RuleGroupStatementOneIPSetReferenceStatement = Nothing
  , _wAFv2RuleGroupStatementOneNotStatement = Nothing
  , _wAFv2RuleGroupStatementOneOrStatement = Nothing
  , _wAFv2RuleGroupStatementOneRateBasedStatement = Nothing
  , _wAFv2RuleGroupStatementOneRegexPatternSetReferenceStatement = Nothing
  , _wAFv2RuleGroupStatementOneSizeConstraintStatement = Nothing
  , _wAFv2RuleGroupStatementOneSqliMatchStatement = Nothing
  , _wAFv2RuleGroupStatementOneXssMatchStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-andstatement
wafrgsoAndStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupAndStatementOne)
wafrgsoAndStatement = lens _wAFv2RuleGroupStatementOneAndStatement (\s a -> s { _wAFv2RuleGroupStatementOneAndStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-bytematchstatement
wafrgsoByteMatchStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupByteMatchStatement)
wafrgsoByteMatchStatement = lens _wAFv2RuleGroupStatementOneByteMatchStatement (\s a -> s { _wAFv2RuleGroupStatementOneByteMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-geomatchstatement
wafrgsoGeoMatchStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupGeoMatchStatement)
wafrgsoGeoMatchStatement = lens _wAFv2RuleGroupStatementOneGeoMatchStatement (\s a -> s { _wAFv2RuleGroupStatementOneGeoMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-ipsetreferencestatement
wafrgsoIPSetReferenceStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupIPSetReferenceStatement)
wafrgsoIPSetReferenceStatement = lens _wAFv2RuleGroupStatementOneIPSetReferenceStatement (\s a -> s { _wAFv2RuleGroupStatementOneIPSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-notstatement
wafrgsoNotStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupNotStatementOne)
wafrgsoNotStatement = lens _wAFv2RuleGroupStatementOneNotStatement (\s a -> s { _wAFv2RuleGroupStatementOneNotStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-orstatement
wafrgsoOrStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupOrStatementOne)
wafrgsoOrStatement = lens _wAFv2RuleGroupStatementOneOrStatement (\s a -> s { _wAFv2RuleGroupStatementOneOrStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-ratebasedstatement
wafrgsoRateBasedStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupRateBasedStatementOne)
wafrgsoRateBasedStatement = lens _wAFv2RuleGroupStatementOneRateBasedStatement (\s a -> s { _wAFv2RuleGroupStatementOneRateBasedStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-regexpatternsetreferencestatement
wafrgsoRegexPatternSetReferenceStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupRegexPatternSetReferenceStatement)
wafrgsoRegexPatternSetReferenceStatement = lens _wAFv2RuleGroupStatementOneRegexPatternSetReferenceStatement (\s a -> s { _wAFv2RuleGroupStatementOneRegexPatternSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-sizeconstraintstatement
wafrgsoSizeConstraintStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupSizeConstraintStatement)
wafrgsoSizeConstraintStatement = lens _wAFv2RuleGroupStatementOneSizeConstraintStatement (\s a -> s { _wAFv2RuleGroupStatementOneSizeConstraintStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-sqlimatchstatement
wafrgsoSqliMatchStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupSqliMatchStatement)
wafrgsoSqliMatchStatement = lens _wAFv2RuleGroupStatementOneSqliMatchStatement (\s a -> s { _wAFv2RuleGroupStatementOneSqliMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-statementone.html#cfn-wafv2-rulegroup-statementone-xssmatchstatement
wafrgsoXssMatchStatement :: Lens' WAFv2RuleGroupStatementOne (Maybe WAFv2RuleGroupXssMatchStatement)
wafrgsoXssMatchStatement = lens _wAFv2RuleGroupStatementOneXssMatchStatement (\s a -> s { _wAFv2RuleGroupStatementOneXssMatchStatement = a })
