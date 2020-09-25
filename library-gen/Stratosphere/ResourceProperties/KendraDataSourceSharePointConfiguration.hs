{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceSharePointConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceInclusionsExclusionsStrings
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceToIndexFieldMappingList
import Stratosphere.ResourceProperties.KendraDataSourceDataSourceVpcConfiguration

-- | Full data type definition for KendraDataSourceSharePointConfiguration.
-- See 'kendraDataSourceSharePointConfiguration' for a more convenient
-- constructor.
data KendraDataSourceSharePointConfiguration =
  KendraDataSourceSharePointConfiguration
  { _kendraDataSourceSharePointConfigurationCrawlAttachments :: Maybe (Val Bool)
  , _kendraDataSourceSharePointConfigurationDocumentTitleFieldName :: Maybe (Val Text)
  , _kendraDataSourceSharePointConfigurationExclusionPatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  , _kendraDataSourceSharePointConfigurationFieldMappings :: Maybe KendraDataSourceDataSourceToIndexFieldMappingList
  , _kendraDataSourceSharePointConfigurationInclusionPatterns :: Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings
  , _kendraDataSourceSharePointConfigurationSecretArn :: Val Text
  , _kendraDataSourceSharePointConfigurationSharePointVersion :: Val Text
  , _kendraDataSourceSharePointConfigurationUrls :: ValList Text
  , _kendraDataSourceSharePointConfigurationUseChangeLog :: Maybe (Val Bool)
  , _kendraDataSourceSharePointConfigurationVpcConfiguration :: Maybe KendraDataSourceDataSourceVpcConfiguration
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSharePointConfiguration where
  toJSON KendraDataSourceSharePointConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CrawlAttachments",) . toJSON) _kendraDataSourceSharePointConfigurationCrawlAttachments
    , fmap (("DocumentTitleFieldName",) . toJSON) _kendraDataSourceSharePointConfigurationDocumentTitleFieldName
    , fmap (("ExclusionPatterns",) . toJSON) _kendraDataSourceSharePointConfigurationExclusionPatterns
    , fmap (("FieldMappings",) . toJSON) _kendraDataSourceSharePointConfigurationFieldMappings
    , fmap (("InclusionPatterns",) . toJSON) _kendraDataSourceSharePointConfigurationInclusionPatterns
    , (Just . ("SecretArn",) . toJSON) _kendraDataSourceSharePointConfigurationSecretArn
    , (Just . ("SharePointVersion",) . toJSON) _kendraDataSourceSharePointConfigurationSharePointVersion
    , (Just . ("Urls",) . toJSON) _kendraDataSourceSharePointConfigurationUrls
    , fmap (("UseChangeLog",) . toJSON) _kendraDataSourceSharePointConfigurationUseChangeLog
    , fmap (("VpcConfiguration",) . toJSON) _kendraDataSourceSharePointConfigurationVpcConfiguration
    ]

-- | Constructor for 'KendraDataSourceSharePointConfiguration' containing
-- required fields as arguments.
kendraDataSourceSharePointConfiguration
  :: Val Text -- ^ 'kdsspcSecretArn'
  -> Val Text -- ^ 'kdsspcSharePointVersion'
  -> ValList Text -- ^ 'kdsspcUrls'
  -> KendraDataSourceSharePointConfiguration
kendraDataSourceSharePointConfiguration secretArnarg sharePointVersionarg urlsarg =
  KendraDataSourceSharePointConfiguration
  { _kendraDataSourceSharePointConfigurationCrawlAttachments = Nothing
  , _kendraDataSourceSharePointConfigurationDocumentTitleFieldName = Nothing
  , _kendraDataSourceSharePointConfigurationExclusionPatterns = Nothing
  , _kendraDataSourceSharePointConfigurationFieldMappings = Nothing
  , _kendraDataSourceSharePointConfigurationInclusionPatterns = Nothing
  , _kendraDataSourceSharePointConfigurationSecretArn = secretArnarg
  , _kendraDataSourceSharePointConfigurationSharePointVersion = sharePointVersionarg
  , _kendraDataSourceSharePointConfigurationUrls = urlsarg
  , _kendraDataSourceSharePointConfigurationUseChangeLog = Nothing
  , _kendraDataSourceSharePointConfigurationVpcConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-crawlattachments
kdsspcCrawlAttachments :: Lens' KendraDataSourceSharePointConfiguration (Maybe (Val Bool))
kdsspcCrawlAttachments = lens _kendraDataSourceSharePointConfigurationCrawlAttachments (\s a -> s { _kendraDataSourceSharePointConfigurationCrawlAttachments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-documenttitlefieldname
kdsspcDocumentTitleFieldName :: Lens' KendraDataSourceSharePointConfiguration (Maybe (Val Text))
kdsspcDocumentTitleFieldName = lens _kendraDataSourceSharePointConfigurationDocumentTitleFieldName (\s a -> s { _kendraDataSourceSharePointConfigurationDocumentTitleFieldName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-exclusionpatterns
kdsspcExclusionPatterns :: Lens' KendraDataSourceSharePointConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdsspcExclusionPatterns = lens _kendraDataSourceSharePointConfigurationExclusionPatterns (\s a -> s { _kendraDataSourceSharePointConfigurationExclusionPatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-fieldmappings
kdsspcFieldMappings :: Lens' KendraDataSourceSharePointConfiguration (Maybe KendraDataSourceDataSourceToIndexFieldMappingList)
kdsspcFieldMappings = lens _kendraDataSourceSharePointConfigurationFieldMappings (\s a -> s { _kendraDataSourceSharePointConfigurationFieldMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-inclusionpatterns
kdsspcInclusionPatterns :: Lens' KendraDataSourceSharePointConfiguration (Maybe KendraDataSourceDataSourceInclusionsExclusionsStrings)
kdsspcInclusionPatterns = lens _kendraDataSourceSharePointConfigurationInclusionPatterns (\s a -> s { _kendraDataSourceSharePointConfigurationInclusionPatterns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-secretarn
kdsspcSecretArn :: Lens' KendraDataSourceSharePointConfiguration (Val Text)
kdsspcSecretArn = lens _kendraDataSourceSharePointConfigurationSecretArn (\s a -> s { _kendraDataSourceSharePointConfigurationSecretArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-sharepointversion
kdsspcSharePointVersion :: Lens' KendraDataSourceSharePointConfiguration (Val Text)
kdsspcSharePointVersion = lens _kendraDataSourceSharePointConfigurationSharePointVersion (\s a -> s { _kendraDataSourceSharePointConfigurationSharePointVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-urls
kdsspcUrls :: Lens' KendraDataSourceSharePointConfiguration (ValList Text)
kdsspcUrls = lens _kendraDataSourceSharePointConfigurationUrls (\s a -> s { _kendraDataSourceSharePointConfigurationUrls = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-usechangelog
kdsspcUseChangeLog :: Lens' KendraDataSourceSharePointConfiguration (Maybe (Val Bool))
kdsspcUseChangeLog = lens _kendraDataSourceSharePointConfigurationUseChangeLog (\s a -> s { _kendraDataSourceSharePointConfigurationUseChangeLog = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-sharepointconfiguration.html#cfn-kendra-datasource-sharepointconfiguration-vpcconfiguration
kdsspcVpcConfiguration :: Lens' KendraDataSourceSharePointConfiguration (Maybe KendraDataSourceDataSourceVpcConfiguration)
kdsspcVpcConfiguration = lens _kendraDataSourceSharePointConfigurationVpcConfiguration (\s a -> s { _kendraDataSourceSharePointConfigurationVpcConfiguration = a })
