{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html

module Stratosphere.ResourceProperties.MSKClusterBrokerLogs where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.MSKClusterCloudWatchLogs
import Stratosphere.ResourceProperties.MSKClusterFirehose
import Stratosphere.ResourceProperties.MSKClusterS3

-- | Full data type definition for MSKClusterBrokerLogs. See
-- 'mskClusterBrokerLogs' for a more convenient constructor.
data MSKClusterBrokerLogs =
  MSKClusterBrokerLogs
  { _mSKClusterBrokerLogsCloudWatchLogs :: Maybe MSKClusterCloudWatchLogs
  , _mSKClusterBrokerLogsFirehose :: Maybe MSKClusterFirehose
  , _mSKClusterBrokerLogsS3 :: Maybe MSKClusterS3
  } deriving (Show, Eq)

instance ToJSON MSKClusterBrokerLogs where
  toJSON MSKClusterBrokerLogs{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchLogs",) . toJSON) _mSKClusterBrokerLogsCloudWatchLogs
    , fmap (("Firehose",) . toJSON) _mSKClusterBrokerLogsFirehose
    , fmap (("S3",) . toJSON) _mSKClusterBrokerLogsS3
    ]

-- | Constructor for 'MSKClusterBrokerLogs' containing required fields as
-- arguments.
mskClusterBrokerLogs
  :: MSKClusterBrokerLogs
mskClusterBrokerLogs  =
  MSKClusterBrokerLogs
  { _mSKClusterBrokerLogsCloudWatchLogs = Nothing
  , _mSKClusterBrokerLogsFirehose = Nothing
  , _mSKClusterBrokerLogsS3 = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-cloudwatchlogs
mskcblCloudWatchLogs :: Lens' MSKClusterBrokerLogs (Maybe MSKClusterCloudWatchLogs)
mskcblCloudWatchLogs = lens _mSKClusterBrokerLogsCloudWatchLogs (\s a -> s { _mSKClusterBrokerLogsCloudWatchLogs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-firehose
mskcblFirehose :: Lens' MSKClusterBrokerLogs (Maybe MSKClusterFirehose)
mskcblFirehose = lens _mSKClusterBrokerLogsFirehose (\s a -> s { _mSKClusterBrokerLogsFirehose = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-brokerlogs.html#cfn-msk-cluster-brokerlogs-s3
mskcblS3 :: Lens' MSKClusterBrokerLogs (Maybe MSKClusterS3)
mskcblS3 = lens _mSKClusterBrokerLogsS3 (\s a -> s { _mSKClusterBrokerLogsS3 = a })
