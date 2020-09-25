{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentsmetadataconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceDocumentsMetadataConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KendraDataSourceDocumentsMetadataConfiguration. See
-- 'kendraDataSourceDocumentsMetadataConfiguration' for a more convenient
-- constructor.
data KendraDataSourceDocumentsMetadataConfiguration =
  KendraDataSourceDocumentsMetadataConfiguration
  { _kendraDataSourceDocumentsMetadataConfigurationS3Prefix :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceDocumentsMetadataConfiguration where
  toJSON KendraDataSourceDocumentsMetadataConfiguration{..} =
    object $
    catMaybes
    [ fmap (("S3Prefix",) . toJSON) _kendraDataSourceDocumentsMetadataConfigurationS3Prefix
    ]

-- | Constructor for 'KendraDataSourceDocumentsMetadataConfiguration'
-- containing required fields as arguments.
kendraDataSourceDocumentsMetadataConfiguration
  :: KendraDataSourceDocumentsMetadataConfiguration
kendraDataSourceDocumentsMetadataConfiguration  =
  KendraDataSourceDocumentsMetadataConfiguration
  { _kendraDataSourceDocumentsMetadataConfigurationS3Prefix = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-documentsmetadataconfiguration.html#cfn-kendra-datasource-documentsmetadataconfiguration-s3prefix
kdsdmcS3Prefix :: Lens' KendraDataSourceDocumentsMetadataConfiguration (Maybe (Val Text))
kdsdmcS3Prefix = lens _kendraDataSourceDocumentsMetadataConfigurationS3Prefix (\s a -> s { _kendraDataSourceDocumentsMetadataConfigurationS3Prefix = a })
