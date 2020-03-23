{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-logginginfo.html

module Stratosphere.ResourceProperties.MSKClusterLoggingInfo where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterBrokerLogs

-- | Full data type definition for MSKClusterLoggingInfo. See
-- 'mskClusterLoggingInfo' for a more convenient constructor.
data MSKClusterLoggingInfo =
  MSKClusterLoggingInfo
  { _mSKClusterLoggingInfoBrokerLogs :: MSKClusterBrokerLogs
  } deriving (Show, Eq)

instance ToJSON MSKClusterLoggingInfo where
  toJSON MSKClusterLoggingInfo{..} =
    object $
    catMaybes
    [ (Just . ("BrokerLogs",) . toJSON) _mSKClusterLoggingInfoBrokerLogs
    ]

-- | Constructor for 'MSKClusterLoggingInfo' containing required fields as
-- arguments.
mskClusterLoggingInfo
  :: MSKClusterBrokerLogs -- ^ 'mskcliBrokerLogs'
  -> MSKClusterLoggingInfo
mskClusterLoggingInfo brokerLogsarg =
  MSKClusterLoggingInfo
  { _mSKClusterLoggingInfoBrokerLogs = brokerLogsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-logginginfo.html#cfn-msk-cluster-logginginfo-brokerlogs
mskcliBrokerLogs :: Lens' MSKClusterLoggingInfo MSKClusterBrokerLogs
mskcliBrokerLogs = lens _mSKClusterLoggingInfoBrokerLogs (\s a -> s { _mSKClusterLoggingInfoBrokerLogs = a })
