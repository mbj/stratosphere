{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupGeoMatchStatement where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2RuleGroupCountryCodes

-- | Full data type definition for WAFv2RuleGroupGeoMatchStatement. See
-- 'waFv2RuleGroupGeoMatchStatement' for a more convenient constructor.
data WAFv2RuleGroupGeoMatchStatement =
  WAFv2RuleGroupGeoMatchStatement
  { _wAFv2RuleGroupGeoMatchStatementCountryCodes :: Maybe WAFv2RuleGroupCountryCodes
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupGeoMatchStatement where
  toJSON WAFv2RuleGroupGeoMatchStatement{..} =
    object $
    catMaybes
    [ fmap (("CountryCodes",) . toJSON) _wAFv2RuleGroupGeoMatchStatementCountryCodes
    ]

-- | Constructor for 'WAFv2RuleGroupGeoMatchStatement' containing required
-- fields as arguments.
waFv2RuleGroupGeoMatchStatement
  :: WAFv2RuleGroupGeoMatchStatement
waFv2RuleGroupGeoMatchStatement  =
  WAFv2RuleGroupGeoMatchStatement
  { _wAFv2RuleGroupGeoMatchStatementCountryCodes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-geomatchstatement.html#cfn-wafv2-rulegroup-geomatchstatement-countrycodes
wafrggmsCountryCodes :: Lens' WAFv2RuleGroupGeoMatchStatement (Maybe WAFv2RuleGroupCountryCodes)
wafrggmsCountryCodes = lens _wAFv2RuleGroupGeoMatchStatementCountryCodes (\s a -> s { _wAFv2RuleGroupGeoMatchStatementCountryCodes = a })
