{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html

module Stratosphere.ResourceProperties.FMSPolicyIEMap where

import Stratosphere.ResourceImports


-- | Full data type definition for FMSPolicyIEMap. See 'fmsPolicyIEMap' for a
-- more convenient constructor.
data FMSPolicyIEMap =
  FMSPolicyIEMap
  { _fMSPolicyIEMapACCOUNT :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON FMSPolicyIEMap where
  toJSON FMSPolicyIEMap{..} =
    object $
    catMaybes
    [ fmap (("ACCOUNT",) . toJSON) _fMSPolicyIEMapACCOUNT
    ]

-- | Constructor for 'FMSPolicyIEMap' containing required fields as arguments.
fmsPolicyIEMap
  :: FMSPolicyIEMap
fmsPolicyIEMap  =
  FMSPolicyIEMap
  { _fMSPolicyIEMapACCOUNT = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-fms-policy-iemap.html#cfn-fms-policy-iemap-account
fmspiemACCOUNT :: Lens' FMSPolicyIEMap (Maybe (ValList Text))
fmspiemACCOUNT = lens _fMSPolicyIEMapACCOUNT (\s a -> s { _fMSPolicyIEMapACCOUNT = a })
