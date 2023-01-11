
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html

module Stratosphere.ResourceProperties.MSKClusterStorageInfo where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterEBSStorageInfo

-- | Full data type definition for MSKClusterStorageInfo. See
-- 'mskClusterStorageInfo' for a more convenient constructor.
data MSKClusterStorageInfo =
  MSKClusterStorageInfo
  { _mSKClusterStorageInfoEBSStorageInfo :: Maybe MSKClusterEBSStorageInfo
  } deriving (Show, Eq)

instance ToJSON MSKClusterStorageInfo where
  toJSON MSKClusterStorageInfo{..} =
    object $
    catMaybes
    [ fmap (("EBSStorageInfo",) . toJSON) _mSKClusterStorageInfoEBSStorageInfo
    ]

-- | Constructor for 'MSKClusterStorageInfo' containing required fields as
-- arguments.
mskClusterStorageInfo
  :: MSKClusterStorageInfo
mskClusterStorageInfo  =
  MSKClusterStorageInfo
  { _mSKClusterStorageInfoEBSStorageInfo = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html#cfn-msk-cluster-storageinfo-ebsstorageinfo
mskcsiEBSStorageInfo :: Lens' MSKClusterStorageInfo (Maybe MSKClusterEBSStorageInfo)
mskcsiEBSStorageInfo = lens _mSKClusterStorageInfoEBSStorageInfo (\s a -> s { _mSKClusterStorageInfoEBSStorageInfo = a })
