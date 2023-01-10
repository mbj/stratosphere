
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html

module Stratosphere.ResourceProperties.MSKClusterBrokerNodeGroupInfo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterStorageInfo

-- | Full data type definition for MSKClusterBrokerNodeGroupInfo. See
-- 'mskClusterBrokerNodeGroupInfo' for a more convenient constructor.
data MSKClusterBrokerNodeGroupInfo =
  MSKClusterBrokerNodeGroupInfo
  { _mSKClusterBrokerNodeGroupInfoBrokerAZDistribution :: Maybe (Val Text)
  , _mSKClusterBrokerNodeGroupInfoClientSubnets :: ValList Text
  , _mSKClusterBrokerNodeGroupInfoInstanceType :: Val Text
  , _mSKClusterBrokerNodeGroupInfoSecurityGroups :: Maybe (ValList Text)
  , _mSKClusterBrokerNodeGroupInfoStorageInfo :: Maybe MSKClusterStorageInfo
  } deriving (Show, Eq)

instance ToJSON MSKClusterBrokerNodeGroupInfo where
  toJSON MSKClusterBrokerNodeGroupInfo{..} =
    object $
    catMaybes
    [ fmap (("BrokerAZDistribution",) . toJSON) _mSKClusterBrokerNodeGroupInfoBrokerAZDistribution
    , (Just . ("ClientSubnets",) . toJSON) _mSKClusterBrokerNodeGroupInfoClientSubnets
    , (Just . ("InstanceType",) . toJSON) _mSKClusterBrokerNodeGroupInfoInstanceType
    , fmap (("SecurityGroups",) . toJSON) _mSKClusterBrokerNodeGroupInfoSecurityGroups
    , fmap (("StorageInfo",) . toJSON) _mSKClusterBrokerNodeGroupInfoStorageInfo
    ]

-- | Constructor for 'MSKClusterBrokerNodeGroupInfo' containing required
-- fields as arguments.
mskClusterBrokerNodeGroupInfo
  :: ValList Text -- ^ 'mskcbngiClientSubnets'
  -> Val Text -- ^ 'mskcbngiInstanceType'
  -> MSKClusterBrokerNodeGroupInfo
mskClusterBrokerNodeGroupInfo clientSubnetsarg instanceTypearg =
  MSKClusterBrokerNodeGroupInfo
  { _mSKClusterBrokerNodeGroupInfoBrokerAZDistribution = Nothing
  , _mSKClusterBrokerNodeGroupInfoClientSubnets = clientSubnetsarg
  , _mSKClusterBrokerNodeGroupInfoInstanceType = instanceTypearg
  , _mSKClusterBrokerNodeGroupInfoSecurityGroups = Nothing
  , _mSKClusterBrokerNodeGroupInfoStorageInfo = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-brokerazdistribution
mskcbngiBrokerAZDistribution :: Lens' MSKClusterBrokerNodeGroupInfo (Maybe (Val Text))
mskcbngiBrokerAZDistribution = lens _mSKClusterBrokerNodeGroupInfoBrokerAZDistribution (\s a -> s { _mSKClusterBrokerNodeGroupInfoBrokerAZDistribution = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-clientsubnets
mskcbngiClientSubnets :: Lens' MSKClusterBrokerNodeGroupInfo (ValList Text)
mskcbngiClientSubnets = lens _mSKClusterBrokerNodeGroupInfoClientSubnets (\s a -> s { _mSKClusterBrokerNodeGroupInfoClientSubnets = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-instancetype
mskcbngiInstanceType :: Lens' MSKClusterBrokerNodeGroupInfo (Val Text)
mskcbngiInstanceType = lens _mSKClusterBrokerNodeGroupInfoInstanceType (\s a -> s { _mSKClusterBrokerNodeGroupInfoInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-securitygroups
mskcbngiSecurityGroups :: Lens' MSKClusterBrokerNodeGroupInfo (Maybe (ValList Text))
mskcbngiSecurityGroups = lens _mSKClusterBrokerNodeGroupInfoSecurityGroups (\s a -> s { _mSKClusterBrokerNodeGroupInfoSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokernodegroupinfo.html#cfn-msk-cluster-brokernodegroupinfo-storageinfo
mskcbngiStorageInfo :: Lens' MSKClusterBrokerNodeGroupInfo (Maybe MSKClusterStorageInfo)
mskcbngiStorageInfo = lens _mSKClusterBrokerNodeGroupInfoStorageInfo (\s a -> s { _mSKClusterBrokerNodeGroupInfoStorageInfo = a })
