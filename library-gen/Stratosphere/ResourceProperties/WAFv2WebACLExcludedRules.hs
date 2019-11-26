{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrules.html

module Stratosphere.ResourceProperties.WAFv2WebACLExcludedRules where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLExcludedRule

-- | Full data type definition for WAFv2WebACLExcludedRules. See
-- 'waFv2WebACLExcludedRules' for a more convenient constructor.
data WAFv2WebACLExcludedRules =
  WAFv2WebACLExcludedRules
  { _wAFv2WebACLExcludedRulesExcludedRules :: Maybe [WAFv2WebACLExcludedRule]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLExcludedRules where
  toJSON WAFv2WebACLExcludedRules{..} =
    object $
    catMaybes
    [ fmap (("ExcludedRules",) . toJSON) _wAFv2WebACLExcludedRulesExcludedRules
    ]

-- | Constructor for 'WAFv2WebACLExcludedRules' containing required fields as
-- arguments.
waFv2WebACLExcludedRules
  :: WAFv2WebACLExcludedRules
waFv2WebACLExcludedRules  =
  WAFv2WebACLExcludedRules
  { _wAFv2WebACLExcludedRulesExcludedRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-excludedrules.html#cfn-wafv2-webacl-excludedrules-excludedrules
wafwaclerExcludedRules :: Lens' WAFv2WebACLExcludedRules (Maybe [WAFv2WebACLExcludedRule])
wafwaclerExcludedRules = lens _wAFv2WebACLExcludedRulesExcludedRules (\s a -> s { _wAFv2WebACLExcludedRulesExcludedRules = a })
