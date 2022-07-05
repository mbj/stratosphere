{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html

module Stratosphere.Resources.MSKCluster where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterBrokerNodeGroupInfo
import Stratosphere.ResourceProperties.MSKClusterClientAuthentication
import Stratosphere.ResourceProperties.MSKClusterConfigurationInfo
import Stratosphere.ResourceProperties.MSKClusterEncryptionInfo
import Stratosphere.ResourceProperties.MSKClusterLoggingInfo
import Stratosphere.ResourceProperties.MSKClusterOpenMonitoring

-- | Full data type definition for MSKCluster. See 'mskCluster' for a more
-- convenient constructor.
data MSKCluster =
  MSKCluster
  { _mSKClusterBrokerNodeGroupInfo :: MSKClusterBrokerNodeGroupInfo
  , _mSKClusterClientAuthentication :: Maybe MSKClusterClientAuthentication
  , _mSKClusterClusterName :: Val Text
  , _mSKClusterConfigurationInfo :: Maybe MSKClusterConfigurationInfo
  , _mSKClusterEncryptionInfo :: Maybe MSKClusterEncryptionInfo
  , _mSKClusterEnhancedMonitoring :: Maybe (Val Text)
  , _mSKClusterKafkaVersion :: Val Text
  , _mSKClusterLoggingInfo :: Maybe MSKClusterLoggingInfo
  , _mSKClusterNumberOfBrokerNodes :: Val Integer
  , _mSKClusterOpenMonitoring :: Maybe MSKClusterOpenMonitoring
  , _mSKClusterTags :: Maybe Object
  } deriving (Show, Eq)

instance ToResourceProperties MSKCluster where
  toResourceProperties MSKCluster{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::MSK::Cluster"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("BrokerNodeGroupInfo",) . toJSON) _mSKClusterBrokerNodeGroupInfo
        , fmap (("ClientAuthentication",) . toJSON) _mSKClusterClientAuthentication
        , (Just . ("ClusterName",) . toJSON) _mSKClusterClusterName
        , fmap (("ConfigurationInfo",) . toJSON) _mSKClusterConfigurationInfo
        , fmap (("EncryptionInfo",) . toJSON) _mSKClusterEncryptionInfo
        , fmap (("EnhancedMonitoring",) . toJSON) _mSKClusterEnhancedMonitoring
        , (Just . ("KafkaVersion",) . toJSON) _mSKClusterKafkaVersion
        , fmap (("LoggingInfo",) . toJSON) _mSKClusterLoggingInfo
        , (Just . ("NumberOfBrokerNodes",) . toJSON) _mSKClusterNumberOfBrokerNodes
        , fmap (("OpenMonitoring",) . toJSON) _mSKClusterOpenMonitoring
        , fmap (("Tags",) . toJSON) _mSKClusterTags
        ]
    }

-- | Constructor for 'MSKCluster' containing required fields as arguments.
mskCluster
  :: MSKClusterBrokerNodeGroupInfo -- ^ 'mskcBrokerNodeGroupInfo'
  -> Val Text -- ^ 'mskcClusterName'
  -> Val Text -- ^ 'mskcKafkaVersion'
  -> Val Integer -- ^ 'mskcNumberOfBrokerNodes'
  -> MSKCluster
mskCluster brokerNodeGroupInfoarg clusterNamearg kafkaVersionarg numberOfBrokerNodesarg =
  MSKCluster
  { _mSKClusterBrokerNodeGroupInfo = brokerNodeGroupInfoarg
  , _mSKClusterClientAuthentication = Nothing
  , _mSKClusterClusterName = clusterNamearg
  , _mSKClusterConfigurationInfo = Nothing
  , _mSKClusterEncryptionInfo = Nothing
  , _mSKClusterEnhancedMonitoring = Nothing
  , _mSKClusterKafkaVersion = kafkaVersionarg
  , _mSKClusterLoggingInfo = Nothing
  , _mSKClusterNumberOfBrokerNodes = numberOfBrokerNodesarg
  , _mSKClusterOpenMonitoring = Nothing
  , _mSKClusterTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-brokernodegroupinfo
mskcBrokerNodeGroupInfo :: Lens' MSKCluster MSKClusterBrokerNodeGroupInfo
mskcBrokerNodeGroupInfo = lens _mSKClusterBrokerNodeGroupInfo (\s a -> s { _mSKClusterBrokerNodeGroupInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-clientauthentication
mskcClientAuthentication :: Lens' MSKCluster (Maybe MSKClusterClientAuthentication)
mskcClientAuthentication = lens _mSKClusterClientAuthentication (\s a -> s { _mSKClusterClientAuthentication = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-clustername
mskcClusterName :: Lens' MSKCluster (Val Text)
mskcClusterName = lens _mSKClusterClusterName (\s a -> s { _mSKClusterClusterName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-configurationinfo
mskcConfigurationInfo :: Lens' MSKCluster (Maybe MSKClusterConfigurationInfo)
mskcConfigurationInfo = lens _mSKClusterConfigurationInfo (\s a -> s { _mSKClusterConfigurationInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-encryptioninfo
mskcEncryptionInfo :: Lens' MSKCluster (Maybe MSKClusterEncryptionInfo)
mskcEncryptionInfo = lens _mSKClusterEncryptionInfo (\s a -> s { _mSKClusterEncryptionInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-enhancedmonitoring
mskcEnhancedMonitoring :: Lens' MSKCluster (Maybe (Val Text))
mskcEnhancedMonitoring = lens _mSKClusterEnhancedMonitoring (\s a -> s { _mSKClusterEnhancedMonitoring = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-kafkaversion
mskcKafkaVersion :: Lens' MSKCluster (Val Text)
mskcKafkaVersion = lens _mSKClusterKafkaVersion (\s a -> s { _mSKClusterKafkaVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-logginginfo
mskcLoggingInfo :: Lens' MSKCluster (Maybe MSKClusterLoggingInfo)
mskcLoggingInfo = lens _mSKClusterLoggingInfo (\s a -> s { _mSKClusterLoggingInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-numberofbrokernodes
mskcNumberOfBrokerNodes :: Lens' MSKCluster (Val Integer)
mskcNumberOfBrokerNodes = lens _mSKClusterNumberOfBrokerNodes (\s a -> s { _mSKClusterNumberOfBrokerNodes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-openmonitoring
mskcOpenMonitoring :: Lens' MSKCluster (Maybe MSKClusterOpenMonitoring)
mskcOpenMonitoring = lens _mSKClusterOpenMonitoring (\s a -> s { _mSKClusterOpenMonitoring = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-msk-cluster.html#cfn-msk-cluster-tags
mskcTags :: Lens' MSKCluster (Maybe Object)
mskcTags = lens _mSKClusterTags (\s a -> s { _mSKClusterTags = a })
