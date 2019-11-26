{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rules.html

module Stratosphere.ResourceProperties.WAFv2WebACLRules where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLRule

-- | Full data type definition for WAFv2WebACLRules. See 'waFv2WebACLRules'
-- for a more convenient constructor.
data WAFv2WebACLRules =
  WAFv2WebACLRules
  { _wAFv2WebACLRulesRules :: Maybe [WAFv2WebACLRule]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLRules where
  toJSON WAFv2WebACLRules{..} =
    object $
    catMaybes
    [ fmap (("Rules",) . toJSON) _wAFv2WebACLRulesRules
    ]

-- | Constructor for 'WAFv2WebACLRules' containing required fields as
-- arguments.
waFv2WebACLRules
  :: WAFv2WebACLRules
waFv2WebACLRules  =
  WAFv2WebACLRules
  { _wAFv2WebACLRulesRules = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-rules.html#cfn-wafv2-webacl-rules-rules
wafwaclrRules :: Lens' WAFv2WebACLRules (Maybe [WAFv2WebACLRule])
wafwaclrRules = lens _wAFv2WebACLRulesRules (\s a -> s { _wAFv2WebACLRulesRules = a })
