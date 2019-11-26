{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-countrycodes.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupCountryCodes where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupCountryCodes. See
-- 'waFv2RuleGroupCountryCodes' for a more convenient constructor.
data WAFv2RuleGroupCountryCodes =
  WAFv2RuleGroupCountryCodes
  { _wAFv2RuleGroupCountryCodesCountryCodes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupCountryCodes where
  toJSON WAFv2RuleGroupCountryCodes{..} =
    object $
    catMaybes
    [ fmap (("CountryCodes",) . toJSON) _wAFv2RuleGroupCountryCodesCountryCodes
    ]

-- | Constructor for 'WAFv2RuleGroupCountryCodes' containing required fields
-- as arguments.
waFv2RuleGroupCountryCodes
  :: WAFv2RuleGroupCountryCodes
waFv2RuleGroupCountryCodes  =
  WAFv2RuleGroupCountryCodes
  { _wAFv2RuleGroupCountryCodesCountryCodes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-countrycodes.html#cfn-wafv2-rulegroup-countrycodes-countrycodes
wafrgccCountryCodes :: Lens' WAFv2RuleGroupCountryCodes (Maybe (ValList Text))
wafrgccCountryCodes = lens _wAFv2RuleGroupCountryCodesCountryCodes (\s a -> s { _wAFv2RuleGroupCountryCodesCountryCodes = a })
