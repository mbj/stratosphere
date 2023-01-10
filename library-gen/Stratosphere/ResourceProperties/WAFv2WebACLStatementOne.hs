
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html

module Stratosphere.ResourceProperties.WAFv2WebACLStatementOne where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLAndStatementOne
import Stratosphere.ResourceProperties.WAFv2WebACLByteMatchStatement
import Stratosphere.ResourceProperties.WAFv2WebACLGeoMatchStatement
import Stratosphere.ResourceProperties.WAFv2WebACLIPSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2WebACLManagedRuleGroupStatement
import Stratosphere.ResourceProperties.WAFv2WebACLNotStatementOne
import Stratosphere.ResourceProperties.WAFv2WebACLOrStatementOne
import Stratosphere.ResourceProperties.WAFv2WebACLRateBasedStatementOne
import Stratosphere.ResourceProperties.WAFv2WebACLRegexPatternSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2WebACLRuleGroupReferenceStatement
import Stratosphere.ResourceProperties.WAFv2WebACLSizeConstraintStatement
import Stratosphere.ResourceProperties.WAFv2WebACLSqliMatchStatement
import Stratosphere.ResourceProperties.WAFv2WebACLXssMatchStatement

-- | Full data type definition for WAFv2WebACLStatementOne. See
-- 'waFv2WebACLStatementOne' for a more convenient constructor.
data WAFv2WebACLStatementOne =
  WAFv2WebACLStatementOne
  { _wAFv2WebACLStatementOneAndStatement :: Maybe WAFv2WebACLAndStatementOne
  , _wAFv2WebACLStatementOneByteMatchStatement :: Maybe WAFv2WebACLByteMatchStatement
  , _wAFv2WebACLStatementOneGeoMatchStatement :: Maybe WAFv2WebACLGeoMatchStatement
  , _wAFv2WebACLStatementOneIPSetReferenceStatement :: Maybe WAFv2WebACLIPSetReferenceStatement
  , _wAFv2WebACLStatementOneManagedRuleGroupStatement :: Maybe WAFv2WebACLManagedRuleGroupStatement
  , _wAFv2WebACLStatementOneNotStatement :: Maybe WAFv2WebACLNotStatementOne
  , _wAFv2WebACLStatementOneOrStatement :: Maybe WAFv2WebACLOrStatementOne
  , _wAFv2WebACLStatementOneRateBasedStatement :: Maybe WAFv2WebACLRateBasedStatementOne
  , _wAFv2WebACLStatementOneRegexPatternSetReferenceStatement :: Maybe WAFv2WebACLRegexPatternSetReferenceStatement
  , _wAFv2WebACLStatementOneRuleGroupReferenceStatement :: Maybe WAFv2WebACLRuleGroupReferenceStatement
  , _wAFv2WebACLStatementOneSizeConstraintStatement :: Maybe WAFv2WebACLSizeConstraintStatement
  , _wAFv2WebACLStatementOneSqliMatchStatement :: Maybe WAFv2WebACLSqliMatchStatement
  , _wAFv2WebACLStatementOneXssMatchStatement :: Maybe WAFv2WebACLXssMatchStatement
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLStatementOne where
  toJSON WAFv2WebACLStatementOne{..} =
    object $
    catMaybes
    [ fmap (("AndStatement",) . toJSON) _wAFv2WebACLStatementOneAndStatement
    , fmap (("ByteMatchStatement",) . toJSON) _wAFv2WebACLStatementOneByteMatchStatement
    , fmap (("GeoMatchStatement",) . toJSON) _wAFv2WebACLStatementOneGeoMatchStatement
    , fmap (("IPSetReferenceStatement",) . toJSON) _wAFv2WebACLStatementOneIPSetReferenceStatement
    , fmap (("ManagedRuleGroupStatement",) . toJSON) _wAFv2WebACLStatementOneManagedRuleGroupStatement
    , fmap (("NotStatement",) . toJSON) _wAFv2WebACLStatementOneNotStatement
    , fmap (("OrStatement",) . toJSON) _wAFv2WebACLStatementOneOrStatement
    , fmap (("RateBasedStatement",) . toJSON) _wAFv2WebACLStatementOneRateBasedStatement
    , fmap (("RegexPatternSetReferenceStatement",) . toJSON) _wAFv2WebACLStatementOneRegexPatternSetReferenceStatement
    , fmap (("RuleGroupReferenceStatement",) . toJSON) _wAFv2WebACLStatementOneRuleGroupReferenceStatement
    , fmap (("SizeConstraintStatement",) . toJSON) _wAFv2WebACLStatementOneSizeConstraintStatement
    , fmap (("SqliMatchStatement",) . toJSON) _wAFv2WebACLStatementOneSqliMatchStatement
    , fmap (("XssMatchStatement",) . toJSON) _wAFv2WebACLStatementOneXssMatchStatement
    ]

-- | Constructor for 'WAFv2WebACLStatementOne' containing required fields as
-- arguments.
waFv2WebACLStatementOne
  :: WAFv2WebACLStatementOne
waFv2WebACLStatementOne  =
  WAFv2WebACLStatementOne
  { _wAFv2WebACLStatementOneAndStatement = Nothing
  , _wAFv2WebACLStatementOneByteMatchStatement = Nothing
  , _wAFv2WebACLStatementOneGeoMatchStatement = Nothing
  , _wAFv2WebACLStatementOneIPSetReferenceStatement = Nothing
  , _wAFv2WebACLStatementOneManagedRuleGroupStatement = Nothing
  , _wAFv2WebACLStatementOneNotStatement = Nothing
  , _wAFv2WebACLStatementOneOrStatement = Nothing
  , _wAFv2WebACLStatementOneRateBasedStatement = Nothing
  , _wAFv2WebACLStatementOneRegexPatternSetReferenceStatement = Nothing
  , _wAFv2WebACLStatementOneRuleGroupReferenceStatement = Nothing
  , _wAFv2WebACLStatementOneSizeConstraintStatement = Nothing
  , _wAFv2WebACLStatementOneSqliMatchStatement = Nothing
  , _wAFv2WebACLStatementOneXssMatchStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-andstatement
wafwaclsoAndStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLAndStatementOne)
wafwaclsoAndStatement = lens _wAFv2WebACLStatementOneAndStatement (\s a -> s { _wAFv2WebACLStatementOneAndStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-bytematchstatement
wafwaclsoByteMatchStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLByteMatchStatement)
wafwaclsoByteMatchStatement = lens _wAFv2WebACLStatementOneByteMatchStatement (\s a -> s { _wAFv2WebACLStatementOneByteMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-geomatchstatement
wafwaclsoGeoMatchStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLGeoMatchStatement)
wafwaclsoGeoMatchStatement = lens _wAFv2WebACLStatementOneGeoMatchStatement (\s a -> s { _wAFv2WebACLStatementOneGeoMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-ipsetreferencestatement
wafwaclsoIPSetReferenceStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLIPSetReferenceStatement)
wafwaclsoIPSetReferenceStatement = lens _wAFv2WebACLStatementOneIPSetReferenceStatement (\s a -> s { _wAFv2WebACLStatementOneIPSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-managedrulegroupstatement
wafwaclsoManagedRuleGroupStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLManagedRuleGroupStatement)
wafwaclsoManagedRuleGroupStatement = lens _wAFv2WebACLStatementOneManagedRuleGroupStatement (\s a -> s { _wAFv2WebACLStatementOneManagedRuleGroupStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-notstatement
wafwaclsoNotStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLNotStatementOne)
wafwaclsoNotStatement = lens _wAFv2WebACLStatementOneNotStatement (\s a -> s { _wAFv2WebACLStatementOneNotStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-orstatement
wafwaclsoOrStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLOrStatementOne)
wafwaclsoOrStatement = lens _wAFv2WebACLStatementOneOrStatement (\s a -> s { _wAFv2WebACLStatementOneOrStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-ratebasedstatement
wafwaclsoRateBasedStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLRateBasedStatementOne)
wafwaclsoRateBasedStatement = lens _wAFv2WebACLStatementOneRateBasedStatement (\s a -> s { _wAFv2WebACLStatementOneRateBasedStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-regexpatternsetreferencestatement
wafwaclsoRegexPatternSetReferenceStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLRegexPatternSetReferenceStatement)
wafwaclsoRegexPatternSetReferenceStatement = lens _wAFv2WebACLStatementOneRegexPatternSetReferenceStatement (\s a -> s { _wAFv2WebACLStatementOneRegexPatternSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-rulegroupreferencestatement
wafwaclsoRuleGroupReferenceStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLRuleGroupReferenceStatement)
wafwaclsoRuleGroupReferenceStatement = lens _wAFv2WebACLStatementOneRuleGroupReferenceStatement (\s a -> s { _wAFv2WebACLStatementOneRuleGroupReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-sizeconstraintstatement
wafwaclsoSizeConstraintStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLSizeConstraintStatement)
wafwaclsoSizeConstraintStatement = lens _wAFv2WebACLStatementOneSizeConstraintStatement (\s a -> s { _wAFv2WebACLStatementOneSizeConstraintStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-sqlimatchstatement
wafwaclsoSqliMatchStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLSqliMatchStatement)
wafwaclsoSqliMatchStatement = lens _wAFv2WebACLStatementOneSqliMatchStatement (\s a -> s { _wAFv2WebACLStatementOneSqliMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementone.html#cfn-wafv2-webacl-statementone-xssmatchstatement
wafwaclsoXssMatchStatement :: Lens' WAFv2WebACLStatementOne (Maybe WAFv2WebACLXssMatchStatement)
wafwaclsoXssMatchStatement = lens _wAFv2WebACLStatementOneXssMatchStatement (\s a -> s { _wAFv2WebACLStatementOneXssMatchStatement = a })
