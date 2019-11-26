{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacls.html

module Stratosphere.ResourceProperties.WAFv2WebACLWebACLs where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.WAFv2WebACLWebACLSummary

-- | Full data type definition for WAFv2WebACLWebACLs. See
-- 'waFv2WebACLWebACLs' for a more convenient constructor.
data WAFv2WebACLWebACLs =
  WAFv2WebACLWebACLs
  { _wAFv2WebACLWebACLsWebACLs :: Maybe [WAFv2WebACLWebACLSummary]
  } deriving (Show, Eq)

instance ToJSON WAFv2WebACLWebACLs where
  toJSON WAFv2WebACLWebACLs{..} =
    object $
    catMaybes
    [ fmap (("WebACLs",) . toJSON) _wAFv2WebACLWebACLsWebACLs
    ]

-- | Constructor for 'WAFv2WebACLWebACLs' containing required fields as
-- arguments.
waFv2WebACLWebACLs
  :: WAFv2WebACLWebACLs
waFv2WebACLWebACLs  =
  WAFv2WebACLWebACLs
  { _wAFv2WebACLWebACLsWebACLs = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wafv2-webacl-webacls.html#cfn-wafv2-webacl-webacls-webacls
wafwaclwaclWebACLs :: Lens' WAFv2WebACLWebACLs (Maybe [WAFv2WebACLWebACLSummary])
wafwaclwaclWebACLs = lens _wAFv2WebACLWebACLsWebACLs (\s a -> s { _wAFv2WebACLWebACLsWebACLs = a })
