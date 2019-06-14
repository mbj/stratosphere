{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html

module Stratosphere.ResourceProperties.MSKClusterEBSStorageInfo where

import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterEBSStorageInfo. See
-- 'mskClusterEBSStorageInfo' for a more convenient constructor.
data MSKClusterEBSStorageInfo =
  MSKClusterEBSStorageInfo
  { _mSKClusterEBSStorageInfoVolumeSize :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON MSKClusterEBSStorageInfo where
  toJSON MSKClusterEBSStorageInfo{..} =
    object $
    catMaybes
    [ fmap (("VolumeSize",) . toJSON) _mSKClusterEBSStorageInfoVolumeSize
    ]

-- | Constructor for 'MSKClusterEBSStorageInfo' containing required fields as
-- arguments.
mskClusterEBSStorageInfo
  :: MSKClusterEBSStorageInfo
mskClusterEBSStorageInfo  =
  MSKClusterEBSStorageInfo
  { _mSKClusterEBSStorageInfoVolumeSize = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html#cfn-msk-cluster-ebsstorageinfo-volumesize
mskcebssiVolumeSize :: Lens' MSKClusterEBSStorageInfo (Maybe (Val Integer))
mskcebssiVolumeSize = lens _mSKClusterEBSStorageInfoVolumeSize (\s a -> s { _mSKClusterEBSStorageInfoVolumeSize = a })
