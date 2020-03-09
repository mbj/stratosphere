{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html

module Stratosphere.ResourceProperties.WAFv2WebACLStatementThree where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLByteMatchStatement
import Stratosphere.ResourceProperties.WAFv2WebACLGeoMatchStatement
import Stratosphere.ResourceProperties.WAFv2WebACLIPSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2WebACLManagedRuleGroupStatement
import Stratosphere.ResourceProperties.WAFv2WebACLRegexPatternSetReferenceStatement
import Stratosphere.ResourceProperties.WAFv2WebACLRuleGroupReferenceStatement
import Stratosphere.ResourceProperties.WAFv2WebACLSizeConstraintStatement
import Stratosphere.ResourceProperties.WAFv2WebACLSqliMatchStatement
import Stratosphere.ResourceProperties.WAFv2WebACLXssMatchStatement

-- | Full data type definition for WAFv2WebACLStatementThree. See
-- 'waFv2WebACLStatementThree' for a more convenient constructor.
data WAFv2WebACLStatementThree =
  WAFv2WebACLStatementThree
  { _wAFv2WebACLStatementThreeByteMatchStatement :: Maybe WAFv2WebACLByteMatchStatement
  , _wAFv2WebACLStatementThreeGeoMatchStatement :: Maybe WAFv2WebACLGeoMatchStatement
  , _wAFv2WebACLStatementThreeIPSetReferenceStatement :: Maybe WAFv2WebACLIPSetReferenceStatement
  , _wAFv2WebACLStatementThreeManagedRuleGroupStatement :: Maybe WAFv2WebACLManagedRuleGroupStatement
  , _wAFv2WebACLStatementThreeRegexPatternSetReferenceStatement :: Maybe WAFv2WebACLRegexPatternSetReferenceStatement
  , _wAFv2WebACLStatementThreeRuleGroupReferenceStatement :: Maybe WAFv2WebACLRuleGroupReferenceStatement
  , _wAFv2WebACLStatementThreeSizeConstraintStatement :: Maybe WAFv2WebACLSizeConstraintStatement
  , _wAFv2WebACLStatementThreeSqliMatchStatement :: Maybe WAFv2WebACLSqliMatchStatement
  , _wAFv2WebACLStatementThreeXssMatchStatement :: Maybe WAFv2WebACLXssMatchStatement
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLStatementThree where
  toJSON WAFv2WebACLStatementThree{..} =
    object $
    catMaybes
    [ fmap (("ByteMatchStatement",) . toJSON) _wAFv2WebACLStatementThreeByteMatchStatement
    , fmap (("GeoMatchStatement",) . toJSON) _wAFv2WebACLStatementThreeGeoMatchStatement
    , fmap (("IPSetReferenceStatement",) . toJSON) _wAFv2WebACLStatementThreeIPSetReferenceStatement
    , fmap (("ManagedRuleGroupStatement",) . toJSON) _wAFv2WebACLStatementThreeManagedRuleGroupStatement
    , fmap (("RegexPatternSetReferenceStatement",) . toJSON) _wAFv2WebACLStatementThreeRegexPatternSetReferenceStatement
    , fmap (("RuleGroupReferenceStatement",) . toJSON) _wAFv2WebACLStatementThreeRuleGroupReferenceStatement
    , fmap (("SizeConstraintStatement",) . toJSON) _wAFv2WebACLStatementThreeSizeConstraintStatement
    , fmap (("SqliMatchStatement",) . toJSON) _wAFv2WebACLStatementThreeSqliMatchStatement
    , fmap (("XssMatchStatement",) . toJSON) _wAFv2WebACLStatementThreeXssMatchStatement
    ]

-- | Constructor for 'WAFv2WebACLStatementThree' containing required fields as
-- arguments.
waFv2WebACLStatementThree
  :: WAFv2WebACLStatementThree
waFv2WebACLStatementThree  =
  WAFv2WebACLStatementThree
  { _wAFv2WebACLStatementThreeByteMatchStatement = Nothing
  , _wAFv2WebACLStatementThreeGeoMatchStatement = Nothing
  , _wAFv2WebACLStatementThreeIPSetReferenceStatement = Nothing
  , _wAFv2WebACLStatementThreeManagedRuleGroupStatement = Nothing
  , _wAFv2WebACLStatementThreeRegexPatternSetReferenceStatement = Nothing
  , _wAFv2WebACLStatementThreeRuleGroupReferenceStatement = Nothing
  , _wAFv2WebACLStatementThreeSizeConstraintStatement = Nothing
  , _wAFv2WebACLStatementThreeSqliMatchStatement = Nothing
  , _wAFv2WebACLStatementThreeXssMatchStatement = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-bytematchstatement
wafwaclsthByteMatchStatement :: Lens' WAFv2WebACLStatementThree (Maybe WAFv2WebACLByteMatchStatement)
wafwaclsthByteMatchStatement = lens _wAFv2WebACLStatementThreeByteMatchStatement (\s a -> s { _wAFv2WebACLStatementThreeByteMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-geomatchstatement
wafwaclsthGeoMatchStatement :: Lens' WAFv2WebACLStatementThree (Maybe WAFv2WebACLGeoMatchStatement)
wafwaclsthGeoMatchStatement = lens _wAFv2WebACLStatementThreeGeoMatchStatement (\s a -> s { _wAFv2WebACLStatementThreeGeoMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-ipsetreferencestatement
wafwaclsthIPSetReferenceStatement :: Lens' WAFv2WebACLStatementThree (Maybe WAFv2WebACLIPSetReferenceStatement)
wafwaclsthIPSetReferenceStatement = lens _wAFv2WebACLStatementThreeIPSetReferenceStatement (\s a -> s { _wAFv2WebACLStatementThreeIPSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-managedrulegroupstatement
wafwaclsthManagedRuleGroupStatement :: Lens' WAFv2WebACLStatementThree (Maybe WAFv2WebACLManagedRuleGroupStatement)
wafwaclsthManagedRuleGroupStatement = lens _wAFv2WebACLStatementThreeManagedRuleGroupStatement (\s a -> s { _wAFv2WebACLStatementThreeManagedRuleGroupStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-regexpatternsetreferencestatement
wafwaclsthRegexPatternSetReferenceStatement :: Lens' WAFv2WebACLStatementThree (Maybe WAFv2WebACLRegexPatternSetReferenceStatement)
wafwaclsthRegexPatternSetReferenceStatement = lens _wAFv2WebACLStatementThreeRegexPatternSetReferenceStatement (\s a -> s { _wAFv2WebACLStatementThreeRegexPatternSetReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-rulegroupreferencestatement
wafwaclsthRuleGroupReferenceStatement :: Lens' WAFv2WebACLStatementThree (Maybe WAFv2WebACLRuleGroupReferenceStatement)
wafwaclsthRuleGroupReferenceStatement = lens _wAFv2WebACLStatementThreeRuleGroupReferenceStatement (\s a -> s { _wAFv2WebACLStatementThreeRuleGroupReferenceStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-sizeconstraintstatement
wafwaclsthSizeConstraintStatement :: Lens' WAFv2WebACLStatementThree (Maybe WAFv2WebACLSizeConstraintStatement)
wafwaclsthSizeConstraintStatement = lens _wAFv2WebACLStatementThreeSizeConstraintStatement (\s a -> s { _wAFv2WebACLStatementThreeSizeConstraintStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-sqlimatchstatement
wafwaclsthSqliMatchStatement :: Lens' WAFv2WebACLStatementThree (Maybe WAFv2WebACLSqliMatchStatement)
wafwaclsthSqliMatchStatement = lens _wAFv2WebACLStatementThreeSqliMatchStatement (\s a -> s { _wAFv2WebACLStatementThreeSqliMatchStatement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-statementthree.html#cfn-wafv2-webacl-statementthree-xssmatchstatement
wafwaclsthXssMatchStatement :: Lens' WAFv2WebACLStatementThree (Maybe WAFv2WebACLXssMatchStatement)
wafwaclsthXssMatchStatement = lens _wAFv2WebACLStatementThreeXssMatchStatement (\s a -> s { _wAFv2WebACLStatementThreeXssMatchStatement = a })
