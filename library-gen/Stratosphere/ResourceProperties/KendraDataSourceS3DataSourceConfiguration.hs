{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceS3DataSourceConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceAccessControlListConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceInclusionsExclusionsStrings
import Stratosphere.ResourceProperties.KendraDataSourceDocumentsMetadataConfiguration

-- | Full data type definition for KendraDataSourceS3DataSourceConfiguration.
-- See 'kendraDataSourceS3DataSourceConfiguration' for a more convenient
-- constructor.
data KendraDataSourceS3DataSourceConfiguration =
  KendraDataSourceS3DataSourceConfiguration
  { _kendraDataSourceS3DataSourceConfigurationAccessControlListConfiguration :: Maybe KendraDataSourceAccessControlListConfiguration
  , _kendraDataSourceS3DataSourceConfigurationBucketName :: Val Text
  , _kendraDataSourceS3DataSourceConfigurationDocumentsMetadataConfiguration :: Maybe KendraDataSourceDocumentsMetadataConfiguration
  , _kendraDataSourceS3DataSourceConfigurationExclusionPatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  , _kendraDataSourceS3DataSourceConfigurationInclusionPrefixes :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceS3DataSourceConfiguration where
  toJSON KendraDataSourceS3DataSourceConfiguration{..} =
    object $
    catMaybes
    [ fmap (("AccessControlListConfiguration",) . toJSON) _kendraDataSourceS3DataSourceConfigurationAccessControlListConfiguration
    , (Just . ("BucketName",) . toJSON) _kendraDataSourceS3DataSourceConfigurationBucketName
    , fmap (("DocumentsMetadataConfiguration",) . toJSON) _kendraDataSourceS3DataSourceConfigurationDocumentsMetadataConfiguration
    , fmap (("ExclusionPatterns",) . toJSON) _kendraDataSourceS3DataSourceConfigurationExclusionPatterns
    , fmap (("InclusionPrefixes",) . toJSON) _kendraDataSourceS3DataSourceConfigurationInclusionPrefixes
    ]

-- | Constructor for 'KendraDataSourceS3DataSourceConfiguration' containing
-- required fields as arguments.
kendraDataSourceS3DataSourceConfiguration
  :: Val Text -- ^ 'kdssdscBucketName'
  -> KendraDataSourceS3DataSourceConfiguration
kendraDataSourceS3DataSourceConfiguration bucketNamearg =
  KendraDataSourceS3DataSourceConfiguration
  { _kendraDataSourceS3DataSourceConfigurationAccessControlListConfiguration = Nothing
  , _kendraDataSourceS3DataSourceConfigurationBucketName = bucketNamearg
  , _kendraDataSourceS3DataSourceConfigurationDocumentsMetadataConfiguration = Nothing
  , _kendraDataSourceS3DataSourceConfigurationExclusionPatterns = Nothing
  , _kendraDataSourceS3DataSourceConfigurationInclusionPrefixes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-accesscontrollistconfiguration
kdssdscAccessControlListConfiguration :: Lens' KendraDataSourceS3DataSourceConfiguration (Maybe KendraDataSourceAccessControlListConfiguration)
kdssdscAccessControlListConfiguration = lens _kendraDataSourceS3DataSourceConfigurationAccessControlListConfiguration (\s a -> s { _kendraDataSourceS3DataSourceConfigurationAccessControlListConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-bucketname
kdssdscBucketName :: Lens' KendraDataSourceS3DataSourceConfiguration (Val Text)
kdssdscBucketName = lens _kendraDataSourceS3DataSourceConfigurationBucketName (\s a -> s { _kendraDataSourceS3DataSourceConfigurationBucketName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-documentsmetadataconfiguration
kdssdscDocumentsMetadataConfiguration :: Lens' KendraDataSourceS3DataSourceConfiguration (Maybe KendraDataSourceDocumentsMetadataConfiguration)
kdssdscDocumentsMetadataConfiguration = lens _kendraDataSourceS3DataSourceConfigurationDocumentsMetadataConfiguration (\s a -> s { _kendraDataSourceS3DataSourceConfigurationDocumentsMetadataConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-exclusionpatterns
kdssdscExclusionPatterns :: Lens' KendraDataSourceS3DataSourceConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdssdscExclusionPatterns = lens _kendraDataSourceS3DataSourceConfigurationExclusionPatterns (\s a -> s { _kendraDataSourceS3DataSourceConfigurationExclusionPatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-s3datasourceconfiguration.html#cfn-kendra-datasource-s3datasourceconfiguration-inclusionprefixes
kdssdscInclusionPrefixes :: Lens' KendraDataSourceS3DataSourceConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdssdscInclusionPrefixes = lens _kendraDataSourceS3DataSourceConfigurationInclusionPrefixes (\s a -> s { _kendraDataSourceS3DataSourceConfigurationInclusionPrefixes = a })
