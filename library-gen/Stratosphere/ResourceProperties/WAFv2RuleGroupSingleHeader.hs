{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singleheader.html

module Stratosphere.ResourceProperties.WAFv2RuleGroupSingleHeader where

import Stratosphere.ResourceImports


-- | Full data type definition for WAFv2RuleGroupSingleHeader. See
-- 'waFv2RuleGroupSingleHeader' for a more convenient constructor.
data WAFv2RuleGroupSingleHeader =
  WAFv2RuleGroupSingleHeader
  { _wAFv2RuleGroupSingleHeaderName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON WAFv2RuleGroupSingleHeader where
  toJSON WAFv2RuleGroupSingleHeader{..} =
    object $
    catMaybes
    [ fmap (("Name",) . toJSON) _wAFv2RuleGroupSingleHeaderName
    ]

-- | Constructor for 'WAFv2RuleGroupSingleHeader' containing required fields
-- as arguments.
waFv2RuleGroupSingleHeader
  :: WAFv2RuleGroupSingleHeader
waFv2RuleGroupSingleHeader  =
  WAFv2RuleGroupSingleHeader
  { _wAFv2RuleGroupSingleHeaderName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-rulegroup-singleheader.html#cfn-wafv2-rulegroup-singleheader-name
wafrgshName :: Lens' WAFv2RuleGroupSingleHeader (Maybe (Val Text))
wafrgshName = lens _wAFv2RuleGroupSingleHeaderName (\s a -> s { _wAFv2RuleGroupSingleHeaderName = a })
