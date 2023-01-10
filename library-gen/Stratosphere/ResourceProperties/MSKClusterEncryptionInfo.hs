
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html

module Stratosphere.ResourceProperties.MSKClusterEncryptionInfo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterEncryptionAtRest
import Stratosphere.ResourceProperties.MSKClusterEncryptionInTransit

-- | Full data type definition for MSKClusterEncryptionInfo. See
-- 'mskClusterEncryptionInfo' for a more convenient constructor.
data MSKClusterEncryptionInfo =
  MSKClusterEncryptionInfo
  { _mSKClusterEncryptionInfoEncryptionAtRest :: Maybe MSKClusterEncryptionAtRest
  , _mSKClusterEncryptionInfoEncryptionInTransit :: Maybe MSKClusterEncryptionInTransit
  } deriving (Show, Eq)

instance ToJSON MSKClusterEncryptionInfo where
  toJSON MSKClusterEncryptionInfo{..} =
    object $
    catMaybes
    [ fmap (("EncryptionAtRest",) . toJSON) _mSKClusterEncryptionInfoEncryptionAtRest
    , fmap (("EncryptionInTransit",) . toJSON) _mSKClusterEncryptionInfoEncryptionInTransit
    ]

-- | Constructor for 'MSKClusterEncryptionInfo' containing required fields as
-- arguments.
mskClusterEncryptionInfo
  :: MSKClusterEncryptionInfo
mskClusterEncryptionInfo  =
  MSKClusterEncryptionInfo
  { _mSKClusterEncryptionInfoEncryptionAtRest = Nothing
  , _mSKClusterEncryptionInfoEncryptionInTransit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html#cfn-msk-cluster-encryptioninfo-encryptionatrest
mskceiEncryptionAtRest :: Lens' MSKClusterEncryptionInfo (Maybe MSKClusterEncryptionAtRest)
mskceiEncryptionAtRest = lens _mSKClusterEncryptionInfoEncryptionAtRest (\s a -> s { _mSKClusterEncryptionInfoEncryptionAtRest = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-encryptioninfo.html#cfn-msk-cluster-encryptioninfo-encryptionintransit
mskceiEncryptionInTransit :: Lens' MSKClusterEncryptionInfo (Maybe MSKClusterEncryptionInTransit)
mskceiEncryptionInTransit = lens _mSKClusterEncryptionInfoEncryptionInTransit (\s a -> s { _mSKClusterEncryptionInfoEncryptionInTransit = a })
