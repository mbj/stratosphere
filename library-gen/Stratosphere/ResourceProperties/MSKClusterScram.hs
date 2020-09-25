{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-scram.html

module Stratosphere.ResourceProperties.MSKClusterScram where

import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterScram. See 'mskClusterScram' for
-- a more convenient constructor.
data MSKClusterScram =
  MSKClusterScram
  { _mSKClusterScramEnabled :: Val Bool
  } deriving (Show, Eq)

instance ToJSON MSKClusterScram where
  toJSON MSKClusterScram{..} =
    object $
    catMaybes
    [ (Just . ("Enabled",) . toJSON) _mSKClusterScramEnabled
    ]

-- | Constructor for 'MSKClusterScram' containing required fields as
-- arguments.
mskClusterScram
  :: Val Bool -- ^ 'mskcsEnabled'
  -> MSKClusterScram
mskClusterScram enabledarg =
  MSKClusterScram
  { _mSKClusterScramEnabled = enabledarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-scram.html#cfn-msk-cluster-scram-enabled
mskcsEnabled :: Lens' MSKClusterScram (Val Bool)
mskcsEnabled = lens _mSKClusterScramEnabled (\s a -> s { _mSKClusterScramEnabled = a })
