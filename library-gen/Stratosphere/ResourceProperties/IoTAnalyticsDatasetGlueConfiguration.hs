
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html

module Stratosphere.ResourceProperties.IoTAnalyticsDatasetGlueConfiguration where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for IoTAnalyticsDatasetGlueConfiguration. See
-- 'ioTAnalyticsDatasetGlueConfiguration' for a more convenient constructor.
data IoTAnalyticsDatasetGlueConfiguration =
  IoTAnalyticsDatasetGlueConfiguration
  { _ioTAnalyticsDatasetGlueConfigurationDatabaseName :: Val Text
  , _ioTAnalyticsDatasetGlueConfigurationTableName :: Val Text
  } deriving (Show, Eq)

instance ToJSON IoTAnalyticsDatasetGlueConfiguration where
  toJSON IoTAnalyticsDatasetGlueConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("DatabaseName",) . toJSON) _ioTAnalyticsDatasetGlueConfigurationDatabaseName
    , (Just . ("TableName",) . toJSON) _ioTAnalyticsDatasetGlueConfigurationTableName
    ]

-- | Constructor for 'IoTAnalyticsDatasetGlueConfiguration' containing
-- required fields as arguments.
ioTAnalyticsDatasetGlueConfiguration
  :: Val Text -- ^ 'itadgcDatabaseName'
  -> Val Text -- ^ 'itadgcTableName'
  -> IoTAnalyticsDatasetGlueConfiguration
ioTAnalyticsDatasetGlueConfiguration databaseNamearg tableNamearg =
  IoTAnalyticsDatasetGlueConfiguration
  { _ioTAnalyticsDatasetGlueConfigurationDatabaseName = databaseNamearg
  , _ioTAnalyticsDatasetGlueConfigurationTableName = tableNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html#cfn-iotanalytics-dataset-glueconfiguration-databasename
itadgcDatabaseName :: Lens' IoTAnalyticsDatasetGlueConfiguration (Val Text)
itadgcDatabaseName = lens _ioTAnalyticsDatasetGlueConfigurationDatabaseName (\s a -> s { _ioTAnalyticsDatasetGlueConfigurationDatabaseName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-glueconfiguration.html#cfn-iotanalytics-dataset-glueconfiguration-tablename
itadgcTableName :: Lens' IoTAnalyticsDatasetGlueConfiguration (Val Text)
itadgcTableName = lens _ioTAnalyticsDatasetGlueConfigurationTableName (\s a -> s { _ioTAnalyticsDatasetGlueConfigurationTableName = a })
