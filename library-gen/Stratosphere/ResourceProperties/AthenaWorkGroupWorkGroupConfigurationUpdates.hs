{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html

module Stratosphere.ResourceProperties.AthenaWorkGroupWorkGroupConfigurationUpdates where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AthenaWorkGroupResultConfigurationUpdates

-- | Full data type definition for
-- AthenaWorkGroupWorkGroupConfigurationUpdates. See
-- 'athenaWorkGroupWorkGroupConfigurationUpdates' for a more convenient
-- constructor.
data AthenaWorkGroupWorkGroupConfigurationUpdates =
  AthenaWorkGroupWorkGroupConfigurationUpdates
  { _athenaWorkGroupWorkGroupConfigurationUpdatesBytesScannedCutoffPerQuery :: Maybe (Val Integer)
  , _athenaWorkGroupWorkGroupConfigurationUpdatesEnforceWorkGroupConfiguration :: Maybe (Val Bool)
  , _athenaWorkGroupWorkGroupConfigurationUpdatesPublishCloudWatchMetricsEnabled :: Maybe (Val Bool)
  , _athenaWorkGroupWorkGroupConfigurationUpdatesRemoveBytesScannedCutoffPerQuery :: Maybe (Val Bool)
  , _athenaWorkGroupWorkGroupConfigurationUpdatesRequesterPaysEnabled :: Maybe (Val Bool)
  , _athenaWorkGroupWorkGroupConfigurationUpdatesResultConfigurationUpdates :: Maybe AthenaWorkGroupResultConfigurationUpdates
  } deriving (Show, Eq)

instance ToJSON AthenaWorkGroupWorkGroupConfigurationUpdates where
  toJSON AthenaWorkGroupWorkGroupConfigurationUpdates{..} =
    object $
    catMaybes
    [ fmap (("BytesScannedCutoffPerQuery",) . toJSON) _athenaWorkGroupWorkGroupConfigurationUpdatesBytesScannedCutoffPerQuery
    , fmap (("EnforceWorkGroupConfiguration",) . toJSON) _athenaWorkGroupWorkGroupConfigurationUpdatesEnforceWorkGroupConfiguration
    , fmap (("PublishCloudWatchMetricsEnabled",) . toJSON) _athenaWorkGroupWorkGroupConfigurationUpdatesPublishCloudWatchMetricsEnabled
    , fmap (("RemoveBytesScannedCutoffPerQuery",) . toJSON) _athenaWorkGroupWorkGroupConfigurationUpdatesRemoveBytesScannedCutoffPerQuery
    , fmap (("RequesterPaysEnabled",) . toJSON) _athenaWorkGroupWorkGroupConfigurationUpdatesRequesterPaysEnabled
    , fmap (("ResultConfigurationUpdates",) . toJSON) _athenaWorkGroupWorkGroupConfigurationUpdatesResultConfigurationUpdates
    ]

-- | Constructor for 'AthenaWorkGroupWorkGroupConfigurationUpdates' containing
-- required fields as arguments.
athenaWorkGroupWorkGroupConfigurationUpdates
  :: AthenaWorkGroupWorkGroupConfigurationUpdates
athenaWorkGroupWorkGroupConfigurationUpdates  =
  AthenaWorkGroupWorkGroupConfigurationUpdates
  { _athenaWorkGroupWorkGroupConfigurationUpdatesBytesScannedCutoffPerQuery = Nothing
  , _athenaWorkGroupWorkGroupConfigurationUpdatesEnforceWorkGroupConfiguration = Nothing
  , _athenaWorkGroupWorkGroupConfigurationUpdatesPublishCloudWatchMetricsEnabled = Nothing
  , _athenaWorkGroupWorkGroupConfigurationUpdatesRemoveBytesScannedCutoffPerQuery = Nothing
  , _athenaWorkGroupWorkGroupConfigurationUpdatesRequesterPaysEnabled = Nothing
  , _athenaWorkGroupWorkGroupConfigurationUpdatesResultConfigurationUpdates = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-bytesscannedcutoffperquery
awgwgcuBytesScannedCutoffPerQuery :: Lens' AthenaWorkGroupWorkGroupConfigurationUpdates (Maybe (Val Integer))
awgwgcuBytesScannedCutoffPerQuery = lens _athenaWorkGroupWorkGroupConfigurationUpdatesBytesScannedCutoffPerQuery (\s a -> s { _athenaWorkGroupWorkGroupConfigurationUpdatesBytesScannedCutoffPerQuery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-enforceworkgroupconfiguration
awgwgcuEnforceWorkGroupConfiguration :: Lens' AthenaWorkGroupWorkGroupConfigurationUpdates (Maybe (Val Bool))
awgwgcuEnforceWorkGroupConfiguration = lens _athenaWorkGroupWorkGroupConfigurationUpdatesEnforceWorkGroupConfiguration (\s a -> s { _athenaWorkGroupWorkGroupConfigurationUpdatesEnforceWorkGroupConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-publishcloudwatchmetricsenabled
awgwgcuPublishCloudWatchMetricsEnabled :: Lens' AthenaWorkGroupWorkGroupConfigurationUpdates (Maybe (Val Bool))
awgwgcuPublishCloudWatchMetricsEnabled = lens _athenaWorkGroupWorkGroupConfigurationUpdatesPublishCloudWatchMetricsEnabled (\s a -> s { _athenaWorkGroupWorkGroupConfigurationUpdatesPublishCloudWatchMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-removebytesscannedcutoffperquery
awgwgcuRemoveBytesScannedCutoffPerQuery :: Lens' AthenaWorkGroupWorkGroupConfigurationUpdates (Maybe (Val Bool))
awgwgcuRemoveBytesScannedCutoffPerQuery = lens _athenaWorkGroupWorkGroupConfigurationUpdatesRemoveBytesScannedCutoffPerQuery (\s a -> s { _athenaWorkGroupWorkGroupConfigurationUpdatesRemoveBytesScannedCutoffPerQuery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-requesterpaysenabled
awgwgcuRequesterPaysEnabled :: Lens' AthenaWorkGroupWorkGroupConfigurationUpdates (Maybe (Val Bool))
awgwgcuRequesterPaysEnabled = lens _athenaWorkGroupWorkGroupConfigurationUpdatesRequesterPaysEnabled (\s a -> s { _athenaWorkGroupWorkGroupConfigurationUpdatesRequesterPaysEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfigurationupdates.html#cfn-athena-workgroup-workgroupconfigurationupdates-resultconfigurationupdates
awgwgcuResultConfigurationUpdates :: Lens' AthenaWorkGroupWorkGroupConfigurationUpdates (Maybe AthenaWorkGroupResultConfigurationUpdates)
awgwgcuResultConfigurationUpdates = lens _athenaWorkGroupWorkGroupConfigurationUpdatesResultConfigurationUpdates (\s a -> s { _athenaWorkGroupWorkGroupConfigurationUpdatesResultConfigurationUpdates = a })
