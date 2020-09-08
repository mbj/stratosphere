{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-label.html

module Stratosphere.ResourceProperties.EKSFargateProfileLabel where

import Stratosphere.ResourceImports


-- | Full data type definition for EKSFargateProfileLabel. See
-- 'eksFargateProfileLabel' for a more convenient constructor.
data EKSFargateProfileLabel =
  EKSFargateProfileLabel
  { _eKSFargateProfileLabelKey :: Val Text
  , _eKSFargateProfileLabelValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON EKSFargateProfileLabel where
  toJSON EKSFargateProfileLabel{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _eKSFargateProfileLabelKey
    , (Just . ("Value",) . toJSON) _eKSFargateProfileLabelValue
    ]

-- | Constructor for 'EKSFargateProfileLabel' containing required fields as
-- arguments.
eksFargateProfileLabel
  :: Val Text -- ^ 'eksfplKey'
  -> Val Text -- ^ 'eksfplValue'
  -> EKSFargateProfileLabel
eksFargateProfileLabel keyarg valuearg =
  EKSFargateProfileLabel
  { _eKSFargateProfileLabelKey = keyarg
  , _eKSFargateProfileLabelValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-label.html#cfn-eks-fargateprofile-label-key
eksfplKey :: Lens' EKSFargateProfileLabel (Val Text)
eksfplKey = lens _eKSFargateProfileLabelKey (\s a -> s { _eKSFargateProfileLabelKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-fargateprofile-label.html#cfn-eks-fargateprofile-label-value
eksfplValue :: Lens' EKSFargateProfileLabel (Val Text)
eksfplValue = lens _eKSFargateProfileLabelValue (\s a -> s { _eKSFargateProfileLabelValue = a })
