
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html

module Stratosphere.ResourceProperties.AthenaWorkGroupWorkGroupConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AthenaWorkGroupResultConfiguration

-- | Full data type definition for AthenaWorkGroupWorkGroupConfiguration. See
-- 'athenaWorkGroupWorkGroupConfiguration' for a more convenient
-- constructor.
data AthenaWorkGroupWorkGroupConfiguration =
  AthenaWorkGroupWorkGroupConfiguration
  { _athenaWorkGroupWorkGroupConfigurationBytesScannedCutoffPerQuery :: Maybe (Val Integer)
  , _athenaWorkGroupWorkGroupConfigurationEnforceWorkGroupConfiguration :: Maybe (Val Bool)
  , _athenaWorkGroupWorkGroupConfigurationPublishCloudWatchMetricsEnabled :: Maybe (Val Bool)
  , _athenaWorkGroupWorkGroupConfigurationRequesterPaysEnabled :: Maybe (Val Bool)
  , _athenaWorkGroupWorkGroupConfigurationResultConfiguration :: Maybe AthenaWorkGroupResultConfiguration
  } deriving (Show, Eq)

instance ToJSON AthenaWorkGroupWorkGroupConfiguration where
  toJSON AthenaWorkGroupWorkGroupConfiguration{..} =
    object $
    catMaybes
    [ fmap (("BytesScannedCutoffPerQuery",) . toJSON) _athenaWorkGroupWorkGroupConfigurationBytesScannedCutoffPerQuery
    , fmap (("EnforceWorkGroupConfiguration",) . toJSON) _athenaWorkGroupWorkGroupConfigurationEnforceWorkGroupConfiguration
    , fmap (("PublishCloudWatchMetricsEnabled",) . toJSON) _athenaWorkGroupWorkGroupConfigurationPublishCloudWatchMetricsEnabled
    , fmap (("RequesterPaysEnabled",) . toJSON) _athenaWorkGroupWorkGroupConfigurationRequesterPaysEnabled
    , fmap (("ResultConfiguration",) . toJSON) _athenaWorkGroupWorkGroupConfigurationResultConfiguration
    ]

-- | Constructor for 'AthenaWorkGroupWorkGroupConfiguration' containing
-- required fields as arguments.
athenaWorkGroupWorkGroupConfiguration
  :: AthenaWorkGroupWorkGroupConfiguration
athenaWorkGroupWorkGroupConfiguration  =
  AthenaWorkGroupWorkGroupConfiguration
  { _athenaWorkGroupWorkGroupConfigurationBytesScannedCutoffPerQuery = Nothing
  , _athenaWorkGroupWorkGroupConfigurationEnforceWorkGroupConfiguration = Nothing
  , _athenaWorkGroupWorkGroupConfigurationPublishCloudWatchMetricsEnabled = Nothing
  , _athenaWorkGroupWorkGroupConfigurationRequesterPaysEnabled = Nothing
  , _athenaWorkGroupWorkGroupConfigurationResultConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-bytesscannedcutoffperquery
awgwgcBytesScannedCutoffPerQuery :: Lens' AthenaWorkGroupWorkGroupConfiguration (Maybe (Val Integer))
awgwgcBytesScannedCutoffPerQuery = lens _athenaWorkGroupWorkGroupConfigurationBytesScannedCutoffPerQuery (\s a -> s { _athenaWorkGroupWorkGroupConfigurationBytesScannedCutoffPerQuery = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-enforceworkgroupconfiguration
awgwgcEnforceWorkGroupConfiguration :: Lens' AthenaWorkGroupWorkGroupConfiguration (Maybe (Val Bool))
awgwgcEnforceWorkGroupConfiguration = lens _athenaWorkGroupWorkGroupConfigurationEnforceWorkGroupConfiguration (\s a -> s { _athenaWorkGroupWorkGroupConfigurationEnforceWorkGroupConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-publishcloudwatchmetricsenabled
awgwgcPublishCloudWatchMetricsEnabled :: Lens' AthenaWorkGroupWorkGroupConfiguration (Maybe (Val Bool))
awgwgcPublishCloudWatchMetricsEnabled = lens _athenaWorkGroupWorkGroupConfigurationPublishCloudWatchMetricsEnabled (\s a -> s { _athenaWorkGroupWorkGroupConfigurationPublishCloudWatchMetricsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-requesterpaysenabled
awgwgcRequesterPaysEnabled :: Lens' AthenaWorkGroupWorkGroupConfiguration (Maybe (Val Bool))
awgwgcRequesterPaysEnabled = lens _athenaWorkGroupWorkGroupConfigurationRequesterPaysEnabled (\s a -> s { _athenaWorkGroupWorkGroupConfigurationRequesterPaysEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-athena-workgroup-workgroupconfiguration.html#cfn-athena-workgroup-workgroupconfiguration-resultconfiguration
awgwgcResultConfiguration :: Lens' AthenaWorkGroupWorkGroupConfiguration (Maybe AthenaWorkGroupResultConfiguration)
awgwgcResultConfiguration = lens _athenaWorkGroupWorkGroupConfigurationResultConfiguration (\s a -> s { _athenaWorkGroupWorkGroupConfigurationResultConfiguration = a })
