{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceServiceNowConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceServiceNowKnowledgeArticleConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceServiceNowServiceCatalogConfiguration

-- | Full data type definition for KendraDataSourceServiceNowConfiguration.
-- See 'kendraDataSourceServiceNowConfiguration' for a more convenient
-- constructor.
data KendraDataSourceServiceNowConfiguration =
  KendraDataSourceServiceNowConfiguration
  { _kendraDataSourceServiceNowConfigurationHostUrl :: Val Text
  , _kendraDataSourceServiceNowConfigurationKnowledgeArticleConfiguration :: Maybe KendraDataSourceServiceNowKnowledgeArticleConfiguration
  , _kendraDataSourceServiceNowConfigurationSecretArn :: Val Text
  , _kendraDataSourceServiceNowConfigurationServiceCatalogConfiguration :: Maybe KendraDataSourceServiceNowServiceCatalogConfiguration
  , _kendraDataSourceServiceNowConfigurationServiceNowBuildVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceServiceNowConfiguration where
  toJSON KendraDataSourceServiceNowConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("HostUrl",) . toJSON) _kendraDataSourceServiceNowConfigurationHostUrl
    , fmap (("KnowledgeArticleConfiguration",) . toJSON) _kendraDataSourceServiceNowConfigurationKnowledgeArticleConfiguration
    , (Just . ("SecretArn",) . toJSON) _kendraDataSourceServiceNowConfigurationSecretArn
    , fmap (("ServiceCatalogConfiguration",) . toJSON) _kendraDataSourceServiceNowConfigurationServiceCatalogConfiguration
    , (Just . ("ServiceNowBuildVersion",) . toJSON) _kendraDataSourceServiceNowConfigurationServiceNowBuildVersion
    ]

-- | Constructor for 'KendraDataSourceServiceNowConfiguration' containing
-- required fields as arguments.
kendraDataSourceServiceNowConfiguration
  :: Val Text -- ^ 'kdssncHostUrl'
  -> Val Text -- ^ 'kdssncSecretArn'
  -> Val Text -- ^ 'kdssncServiceNowBuildVersion'
  -> KendraDataSourceServiceNowConfiguration
kendraDataSourceServiceNowConfiguration hostUrlarg secretArnarg serviceNowBuildVersionarg =
  KendraDataSourceServiceNowConfiguration
  { _kendraDataSourceServiceNowConfigurationHostUrl = hostUrlarg
  , _kendraDataSourceServiceNowConfigurationKnowledgeArticleConfiguration = Nothing
  , _kendraDataSourceServiceNowConfigurationSecretArn = secretArnarg
  , _kendraDataSourceServiceNowConfigurationServiceCatalogConfiguration = Nothing
  , _kendraDataSourceServiceNowConfigurationServiceNowBuildVersion = serviceNowBuildVersionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-hosturl
kdssncHostUrl :: Lens' KendraDataSourceServiceNowConfiguration (Val Text)
kdssncHostUrl = lens _kendraDataSourceServiceNowConfigurationHostUrl (\s a -> s { _kendraDataSourceServiceNowConfigurationHostUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-knowledgearticleconfiguration
kdssncKnowledgeArticleConfiguration :: Lens' KendraDataSourceServiceNowConfiguration (Maybe KendraDataSourceServiceNowKnowledgeArticleConfiguration)
kdssncKnowledgeArticleConfiguration = lens _kendraDataSourceServiceNowConfigurationKnowledgeArticleConfiguration (\s a -> s { _kendraDataSourceServiceNowConfigurationKnowledgeArticleConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-secretarn
kdssncSecretArn :: Lens' KendraDataSourceServiceNowConfiguration (Val Text)
kdssncSecretArn = lens _kendraDataSourceServiceNowConfigurationSecretArn (\s a -> s { _kendraDataSourceServiceNowConfigurationSecretArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-servicecatalogconfiguration
kdssncServiceCatalogConfiguration :: Lens' KendraDataSourceServiceNowConfiguration (Maybe KendraDataSourceServiceNowServiceCatalogConfiguration)
kdssncServiceCatalogConfiguration = lens _kendraDataSourceServiceNowConfigurationServiceCatalogConfiguration (\s a -> s { _kendraDataSourceServiceNowConfigurationServiceCatalogConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-servicenowconfiguration.html#cfn-kendra-datasource-servicenowconfiguration-servicenowbuildversion
kdssncServiceNowBuildVersion :: Lens' KendraDataSourceServiceNowConfiguration (Val Text)
kdssncServiceNowBuildVersion = lens _kendraDataSourceServiceNowConfigurationServiceNowBuildVersion (\s a -> s { _kendraDataSourceServiceNowConfigurationServiceNowBuildVersion = a })
