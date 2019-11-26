{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipsets.html

module Stratosphere.ResourceProperties.WAFv2IPSetIPSets where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2IPSetIPSetSummary

-- | Full data type definition for WAFv2IPSetIPSets. See 'waFv2IPSetIPSets'
-- for a more convenient constructor.
data WAFv2IPSetIPSets =
  WAFv2IPSetIPSets
  { _wAFv2IPSetIPSetsIPSets :: Maybe [WAFv2IPSetIPSetSummary]
  } deriving (Show, Eq)

instance ToJSON WAFv2IPSetIPSets where
  toJSON WAFv2IPSetIPSets{..} =
    object $
    catMaybes
    [ fmap (("IPSets",) . toJSON) _wAFv2IPSetIPSetsIPSets
    ]

-- | Constructor for 'WAFv2IPSetIPSets' containing required fields as
-- arguments.
waFv2IPSetIPSets
  :: WAFv2IPSetIPSets
waFv2IPSetIPSets  =
  WAFv2IPSetIPSets
  { _wAFv2IPSetIPSetsIPSets = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-ipset-ipsets.html#cfn-wafv2-ipset-ipsets-ipsets
wafipsipsIPSets :: Lens' WAFv2IPSetIPSets (Maybe [WAFv2IPSetIPSetSummary])
wafipsipsIPSets = lens _wAFv2IPSetIPSetsIPSets (\s a -> s { _wAFv2IPSetIPSetsIPSets = a })
