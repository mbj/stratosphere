{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceOneDriveConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceInclusionsExclusionsStrings
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList
import Stratosphere.ResourceProperties.KendraDataSourceOneDriveUsers

-- | Full data type definition for KendraDataSourceOneDriveConfiguration. See
-- 'kendraDataSourceOneDriveConfiguration' for a more convenient
-- constructor.
data KendraDataSourceOneDriveConfiguration =
  KendraDataSourceOneDriveConfiguration
  { _kendraDataSourceOneDriveConfigurationExclusionPatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  , _kendraDataSourceOneDriveConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  , _kendraDataSourceOneDriveConfigurationInclusionPatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  , _kendraDataSourceOneDriveConfigurationOneDriveUsers :: KendraDataSourceOneDriveUsers
  , _kendraDataSourceOneDriveConfigurationSecretArn :: Val Text
  , _kendraDataSourceOneDriveConfigurationTenantDomain :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceOneDriveConfiguration where
  toJSON KendraDataSourceOneDriveConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ExclusionPatterns",) . toJSON) _kendraDataSourceOneDriveConfigurationExclusionPatterns
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceOneDriveConfigurationFieldMappings
    , fmap (("InclusionPatterns",) . toJSON) _kendraDataSourceOneDriveConfigurationInclusionPatterns
    , (Just . ("OneDriveUsers",) . toJSON) _kendraDataSourceOneDriveConfigurationOneDriveUsers
    , (Just . ("SecretArn",) . toJSON) _kendraDataSourceOneDriveConfigurationSecretArn
    , (Just . ("TenantDomain",) . toJSON) _kendraDataSourceOneDriveConfigurationTenantDomain
    ]

-- | Constructor for 'KendraDataSourceOneDriveConfiguration' containing
-- required fields as arguments.
kendraDataSourceOneDriveConfiguration
  :: KendraDataSourceOneDriveUsers -- ^ 'kdsodcOneDriveUsers'
  -> Val Text -- ^ 'kdsodcSecretArn'
  -> Val Text -- ^ 'kdsodcTenantDomain'
  -> KendraDataSourceOneDriveConfiguration
kendraDataSourceOneDriveConfiguration oneDriveUsersarg secretArnarg tenantDomainarg =
  KendraDataSourceOneDriveConfiguration
  { _kendraDataSourceOneDriveConfigurationExclusionPatterns = Nothing
  , _kendraDataSourceOneDriveConfigurationFieldMappings = Nothing
  , _kendraDataSourceOneDriveConfigurationInclusionPatterns = Nothing
  , _kendraDataSourceOneDriveConfigurationOneDriveUsers = oneDriveUsersarg
  , _kendraDataSourceOneDriveConfigurationSecretArn = secretArnarg
  , _kendraDataSourceOneDriveConfigurationTenantDomain = tenantDomainarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-exclusionpatterns
kdsodcExclusionPatterns :: Lens' KendraDataSourceOneDriveConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdsodcExclusionPatterns = lens _kendraDataSourceOneDriveConfigurationExclusionPatterns (\s a -> s { _kendraDataSourceOneDriveConfigurationExclusionPatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-fieldmappings
kdsodcFieldMappings :: Lens' KendraDataSourceOneDriveConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdsodcFieldMappings = lens _kendraDataSourceOneDriveConfigurationFieldMappings (\s a -> s { _kendraDataSourceOneDriveConfigurationFieldMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-inclusionpatterns
kdsodcInclusionPatterns :: Lens' KendraDataSourceOneDriveConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdsodcInclusionPatterns = lens _kendraDataSourceOneDriveConfigurationInclusionPatterns (\s a -> s { _kendraDataSourceOneDriveConfigurationInclusionPatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-onedriveusers
kdsodcOneDriveUsers :: Lens' KendraDataSourceOneDriveConfiguration KendraDataSourceOneDriveUsers
kdsodcOneDriveUsers = lens _kendraDataSourceOneDriveConfigurationOneDriveUsers (\s a -> s { _kendraDataSourceOneDriveConfigurationOneDriveUsers = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-secretarn
kdsodcSecretArn :: Lens' KendraDataSourceOneDriveConfiguration (Val Text)
kdsodcSecretArn = lens _kendraDataSourceOneDriveConfigurationSecretArn (\s a -> s { _kendraDataSourceOneDriveConfigurationSecretArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-onedriveconfiguration.html#cfn-kendra-datasource-onedriveconfiguration-tenantdomain
kdsodcTenantDomain :: Lens' KendraDataSourceOneDriveConfiguration (Val Text)
kdsodcTenantDomain = lens _kendraDataSourceOneDriveConfigurationTenantDomain (\s a -> s { _kendraDataSourceOneDriveConfigurationTenantDomain = a })
