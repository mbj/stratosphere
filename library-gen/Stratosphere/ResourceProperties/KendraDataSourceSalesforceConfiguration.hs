{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceChatterFeedConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceInclusionsExclusionsStrings
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceKnowledgeArticleConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceStandardObjectAttachmentConfiguration
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceStandardObjectConfigurationList

-- | Full data type definition for KendraDataSourceSalesforceConfiguration.
-- See 'kendraDataSourceSalesforceConfiguration' for a more convenient
-- constructor.
data KendraDataSourceSalesforceConfiguration =
  KendraDataSourceSalesforceConfiguration
  { _kendraDataSourceSalesforceConfigurationChatterFeedConfiguration :: Maybe KendraDataSourceSalesforceChatterFeedConfiguration
  , _kendraDataSourceSalesforceConfigurationCrawlAttachments :: Maybe (Val Bool)
  , _kendraDataSourceSalesforceConfigurationExcludeAttachmentFilePatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  , _kendraDataSourceSalesforceConfigurationIncludeAttachmentFilePatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  , _kendraDataSourceSalesforceConfigurationKnowledgeArticleConfiguration :: Maybe KendraDataSourceSalesforceKnowledgeArticleConfiguration
  , _kendraDataSourceSalesforceConfigurationSecretArn :: Val Text
  , _kendraDataSourceSalesforceConfigurationServerUrl :: Val Text
  , _kendraDataSourceSalesforceConfigurationStandardObjectAttachmentConfiguration :: Maybe KendraDataSourceSalesforceStandardObjectAttachmentConfiguration
  , _kendraDataSourceSalesforceConfigurationStandardObjectConfigurations :: Maybe KendraDataSourceSalesforceStandardObjectConfigurationList
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceConfiguration where
  toJSON KendraDataSourceSalesforceConfiguration{..} =
    object $
    catMaybes
    [ fmap (("ChatterFeedConfiguration",) . toJSON) _kendraDataSourceSalesforceConfigurationChatterFeedConfiguration
    , fmap (("CrawlAttachments",) . toJSON) _kendraDataSourceSalesforceConfigurationCrawlAttachments
    , fmap (("ExcludeAttachmentFilePatterns",) . toJSON) _kendraDataSourceSalesforceConfigurationExcludeAttachmentFilePatterns
    , fmap (("IncludeAttachmentFilePatterns",) . toJSON) _kendraDataSourceSalesforceConfigurationIncludeAttachmentFilePatterns
    , fmap (("KnowledgeArticleConfiguration",) . toJSON) _kendraDataSourceSalesforceConfigurationKnowledgeArticleConfiguration
    , (Just . ("SecretArn",) . toJSON) _kendraDataSourceSalesforceConfigurationSecretArn
    , (Just . ("ServerUrl",) . toJSON) _kendraDataSourceSalesforceConfigurationServerUrl
    , fmap (("StandardObjectAttachmentConfiguration",) . toJSON) _kendraDataSourceSalesforceConfigurationStandardObjectAttachmentConfiguration
    , fmap (("StandardObjectConfigurations",) . toJSON) _kendraDataSourceSalesforceConfigurationStandardObjectConfigurations
    ]

-- | Constructor for 'KendraDataSourceSalesforceConfiguration' containing
-- required fields as arguments.
kendraDataSourceSalesforceConfiguration
  :: Val Text -- ^ 'kdsscSecretArn'
  -> Val Text -- ^ 'kdsscServerUrl'
  -> KendraDataSourceSalesforceConfiguration
kendraDataSourceSalesforceConfiguration secretArnarg serverUrlarg =
  KendraDataSourceSalesforceConfiguration
  { _kendraDataSourceSalesforceConfigurationChatterFeedConfiguration = Nothing
  , _kendraDataSourceSalesforceConfigurationCrawlAttachments = Nothing
  , _kendraDataSourceSalesforceConfigurationExcludeAttachmentFilePatterns = Nothing
  , _kendraDataSourceSalesforceConfigurationIncludeAttachmentFilePatterns = Nothing
  , _kendraDataSourceSalesforceConfigurationKnowledgeArticleConfiguration = Nothing
  , _kendraDataSourceSalesforceConfigurationSecretArn = secretArnarg
  , _kendraDataSourceSalesforceConfigurationServerUrl = serverUrlarg
  , _kendraDataSourceSalesforceConfigurationStandardObjectAttachmentConfiguration = Nothing
  , _kendraDataSourceSalesforceConfigurationStandardObjectConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-chatterfeedconfiguration
kdsscChatterFeedConfiguration :: Lens' KendraDataSourceSalesforceConfiguration (Maybe KendraDataSourceSalesforceChatterFeedConfiguration)
kdsscChatterFeedConfiguration = lens _kendraDataSourceSalesforceConfigurationChatterFeedConfiguration (\s a -> s { _kendraDataSourceSalesforceConfigurationChatterFeedConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-crawlattachments
kdsscCrawlAttachments :: Lens' KendraDataSourceSalesforceConfiguration (Maybe (Val Bool))
kdsscCrawlAttachments = lens _kendraDataSourceSalesforceConfigurationCrawlAttachments (\s a -> s { _kendraDataSourceSalesforceConfigurationCrawlAttachments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-excludeattachmentfilepatterns
kdsscExcludeAttachmentFilePatterns :: Lens' KendraDataSourceSalesforceConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdsscExcludeAttachmentFilePatterns = lens _kendraDataSourceSalesforceConfigurationExcludeAttachmentFilePatterns (\s a -> s { _kendraDataSourceSalesforceConfigurationExcludeAttachmentFilePatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-includeattachmentfilepatterns
kdsscIncludeAttachmentFilePatterns :: Lens' KendraDataSourceSalesforceConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdsscIncludeAttachmentFilePatterns = lens _kendraDataSourceSalesforceConfigurationIncludeAttachmentFilePatterns (\s a -> s { _kendraDataSourceSalesforceConfigurationIncludeAttachmentFilePatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-knowledgearticleconfiguration
kdsscKnowledgeArticleConfiguration :: Lens' KendraDataSourceSalesforceConfiguration (Maybe KendraDataSourceSalesforceKnowledgeArticleConfiguration)
kdsscKnowledgeArticleConfiguration = lens _kendraDataSourceSalesforceConfigurationKnowledgeArticleConfiguration (\s a -> s { _kendraDataSourceSalesforceConfigurationKnowledgeArticleConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-secretarn
kdsscSecretArn :: Lens' KendraDataSourceSalesforceConfiguration (Val Text)
kdsscSecretArn = lens _kendraDataSourceSalesforceConfigurationSecretArn (\s a -> s { _kendraDataSourceSalesforceConfigurationSecretArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-serverurl
kdsscServerUrl :: Lens' KendraDataSourceSalesforceConfiguration (Val Text)
kdsscServerUrl = lens _kendraDataSourceSalesforceConfigurationServerUrl (\s a -> s { _kendraDataSourceSalesforceConfigurationServerUrl = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-standardobjectattachmentconfiguration
kdsscStandardObjectAttachmentConfiguration :: Lens' KendraDataSourceSalesforceConfiguration (Maybe KendraDataSourceSalesforceStandardObjectAttachmentConfiguration)
kdsscStandardObjectAttachmentConfiguration = lens _kendraDataSourceSalesforceConfigurationStandardObjectAttachmentConfiguration (\s a -> s { _kendraDataSourceSalesforceConfigurationStandardObjectAttachmentConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceconfiguration.html#cfn-kendra-datasource-salesforceconfiguration-standardobjectconfigurations
kdsscStandardObjectConfigurations :: Lens' KendraDataSourceSalesforceConfiguration (Maybe KendraDataSourceSalesforceStandardObjectConfigurationList)
kdsscStandardObjectConfigurations = lens _kendraDataSourceSalesforceConfigurationStandardObjectConfigurations (\s a -> s { _kendraDataSourceSalesforceConfigurationStandardObjectConfigurations = a })
