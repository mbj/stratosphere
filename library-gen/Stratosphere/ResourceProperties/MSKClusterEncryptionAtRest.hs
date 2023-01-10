
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionatrest.html

module Stratosphere.ResourceProperties.MSKClusterEncryptionAtRest where

import Stratosphere.ResourceImports


-- | Full data type definition for MSKClusterEncryptionAtRest. See
-- 'mskClusterEncryptionAtRest' for a more convenient constructor.
data MSKClusterEncryptionAtRest =
  MSKClusterEncryptionAtRest
  { _mSKClusterEncryptionAtRestDataVolumeKMSKeyId :: Val Text
  } deriving (Show, Eq)

instance ToJSON MSKClusterEncryptionAtRest where
  toJSON MSKClusterEncryptionAtRest{..} =
    object $
    catMaybes
    [ (Just . ("DataVolumeKMSKeyId",) . toJSON) _mSKClusterEncryptionAtRestDataVolumeKMSKeyId
    ]

-- | Constructor for 'MSKClusterEncryptionAtRest' containing required fields
-- as arguments.
mskClusterEncryptionAtRest
  :: Val Text -- ^ 'mskcearDataVolumeKMSKeyId'
  -> MSKClusterEncryptionAtRest
mskClusterEncryptionAtRest dataVolumeKMSKeyIdarg =
  MSKClusterEncryptionAtRest
  { _mSKClusterEncryptionAtRestDataVolumeKMSKeyId = dataVolumeKMSKeyIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptionatrest.html#cfn-msk-cluster-encryptionatrest-datavolumekmskeyid
mskcearDataVolumeKMSKeyId :: Lens' MSKClusterEncryptionAtRest (Val Text)
mskcearDataVolumeKMSKeyId = lens _mSKClusterEncryptionAtRestDataVolumeKMSKeyId (\s a -> s { _mSKClusterEncryptionAtRestDataVolumeKMSKeyId = a })
