{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policytag.html

module Stratosphere.ResourceProperties.FMSPolicyPolicyTag where

import Stratosphere.ResourceImports


-- | Full data type definition for FMSPolicyPolicyTag. See
-- 'fmsPolicyPolicyTag' for a more convenient constructor.
data FMSPolicyPolicyTag =
  FMSPolicyPolicyTag
  { _fMSPolicyPolicyTagKey :: Val Text
  , _fMSPolicyPolicyTagValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON FMSPolicyPolicyTag where
  toJSON FMSPolicyPolicyTag{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _fMSPolicyPolicyTagKey
    , (Just . ("Value",) . toJSON) _fMSPolicyPolicyTagValue
    ]

-- | Constructor for 'FMSPolicyPolicyTag' containing required fields as
-- arguments.
fmsPolicyPolicyTag
  :: Val Text -- ^ 'fmspptKey'
  -> Val Text -- ^ 'fmspptValue'
  -> FMSPolicyPolicyTag
fmsPolicyPolicyTag keyarg valuearg =
  FMSPolicyPolicyTag
  { _fMSPolicyPolicyTagKey = keyarg
  , _fMSPolicyPolicyTagValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policytag.html#cfn-fms-policy-policytag-key
fmspptKey :: Lens' FMSPolicyPolicyTag (Val Text)
fmspptKey = lens _fMSPolicyPolicyTagKey (\s a -> s { _fMSPolicyPolicyTagKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-policytag.html#cfn-fms-policy-policytag-value
fmspptValue :: Lens' FMSPolicyPolicyTag (Val Text)
fmspptValue = lens _fMSPolicyPolicyTagValue (\s a -> s { _fMSPolicyPolicyTagValue = a })
