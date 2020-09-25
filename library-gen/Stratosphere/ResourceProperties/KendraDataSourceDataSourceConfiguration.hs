{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceDataSourceConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDatabaseConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceOneDriveConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceS3DataSourceConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceServiceNowConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceSharePointConfiguration

-- | Full data type definition for KendraDataSourceDataSourceConfiguration.
-- See 'kendraDataSourceDataSourceConfiguration' for a more convenient
-- constructor.
data KendraDataSourceDataSourceConfiguration =
  KendraDataSourceDataSourceConfiguration
  { _kendraDataSourceDataSourceConfigurationDatabaseConfiguration :: Maybe KendraDataSourceDatabaseConfiguration
  , _kendraDataSourceDataSourceConfigurationOneDriveConfiguration :: Maybe KendraDataSourceOneDriveConfiguration
  , _kendraDataSourceDataSourceConfigurationS3Configuration :: Maybe KendraDataSourceS3DataSourceConfiguration
  , _kendraDataSourceDataSourceConfigurationSalesforceConfiguration :: Maybe KendraDataSourceSalesforceConfiguration
  , _kendraDataSourceDataSourceConfigurationServiceNowConfiguration :: Maybe KendraDataSourceServiceNowConfiguration
  , _kendraDataSourceDataSourceConfigurationSharePointConfiguration :: Maybe KendraDataSourceSharePointConfiguration
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceDataSourceConfiguration where
  toJSON KendraDataSourceDataSourceConfiguration{..} =
    object $
    catMaybes
    [ fmap (("DatabaseConfiguration",) . toJSON) _kendraDataSourceDataSourceConfigurationDatabaseConfiguration
    , fmap (("OneDriveConfiguration",) . toJSON) _kendraDataSourceDataSourceConfigurationOneDriveConfiguration
    , fmap (("S3Configuration",) . toJSON) _kendraDataSourceDataSourceConfigurationS3Configuration
    , fmap (("SalesforceConfiguration",) . toJSON) _kendraDataSourceDataSourceConfigurationSalesforceConfiguration
    , fmap (("ServiceNowConfiguration",) . toJSON) _kendraDataSourceDataSourceConfigurationServiceNowConfiguration
    , fmap (("SharePointConfiguration",) . toJSON) _kendraDataSourceDataSourceConfigurationSharePointConfiguration
    ]

-- | Constructor for 'KendraDataSourceDataSourceConfiguration' containing
-- required fields as arguments.
kendraDataSourceDataSourceConfiguration
  :: KendraDataSourceDataSourceConfiguration
kendraDataSourceDataSourceConfiguration  =
  KendraDataSourceDataSourceConfiguration
  { _kendraDataSourceDataSourceConfigurationDatabaseConfiguration = Nothing
  , _kendraDataSourceDataSourceConfigurationOneDriveConfiguration = Nothing
  , _kendraDataSourceDataSourceConfigurationS3Configuration = Nothing
  , _kendraDataSourceDataSourceConfigurationSalesforceConfiguration = Nothing
  , _kendraDataSourceDataSourceConfigurationServiceNowConfiguration = Nothing
  , _kendraDataSourceDataSourceConfigurationSharePointConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-databaseconfiguration
kdsdscDatabaseConfiguration :: Lens' KendraDataSourceDataSourceConfiguration (Maybe KendraDataSourceDatabaseConfiguration)
kdsdscDatabaseConfiguration = lens _kendraDataSourceDataSourceConfigurationDatabaseConfiguration (\s a -> s { _kendraDataSourceDataSourceConfigurationDatabaseConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-onedriveconfiguration
kdsdscOneDriveConfiguration :: Lens' KendraDataSourceDataSourceConfiguration (Maybe KendraDataSourceOneDriveConfiguration)
kdsdscOneDriveConfiguration = lens _kendraDataSourceDataSourceConfigurationOneDriveConfiguration (\s a -> s { _kendraDataSourceDataSourceConfigurationOneDriveConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-s3configuration
kdsdscS3Configuration :: Lens' KendraDataSourceDataSourceConfiguration (Maybe KendraDataSourceS3DataSourceConfiguration)
kdsdscS3Configuration = lens _kendraDataSourceDataSourceConfigurationS3Configuration (\s a -> s { _kendraDataSourceDataSourceConfigurationS3Configuration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-salesforceconfiguration
kdsdscSalesforceConfiguration :: Lens' KendraDataSourceDataSourceConfiguration (Maybe KendraDataSourceSalesforceConfiguration)
kdsdscSalesforceConfiguration = lens _kendraDataSourceDataSourceConfigurationSalesforceConfiguration (\s a -> s { _kendraDataSourceDataSourceConfigurationSalesforceConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-servicenowconfiguration
kdsdscServiceNowConfiguration :: Lens' KendraDataSourceDataSourceConfiguration (Maybe KendraDataSourceServiceNowConfiguration)
kdsdscServiceNowConfiguration = lens _kendraDataSourceDataSourceConfigurationServiceNowConfiguration (\s a -> s { _kendraDataSourceDataSourceConfigurationServiceNowConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-datasourceconfiguration.html#cfn-kendra-datasource-datasourceconfiguration-sharepointconfiguration
kdsdscSharePointConfiguration :: Lens' KendraDataSourceDataSourceConfiguration (Maybe KendraDataSourceSharePointConfiguration)
kdsdscSharePointConfiguration = lens _kendraDataSourceDataSourceConfigurationSharePointConfiguration (\s a -> s { _kendraDataSourceDataSourceConfigurationSharePointConfiguration = a })
