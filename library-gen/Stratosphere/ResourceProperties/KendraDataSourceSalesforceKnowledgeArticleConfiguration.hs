{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceknowledgearticleconfiguration.html

module Stratosphere.ResourceProperties.KendraDataSourceSalesforceKnowledgeArticleConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceKnowledgeArticleStateList
import Stratosphere.ResourceProperties.KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration

-- | Full data type definition for
-- KendraDataSourceSalesforceKnowledgeArticleConfiguration. See
-- 'kendraDataSourceSalesforceKnowledgeArticleConfiguration' for a more
-- convenient constructor.
data KendraDataSourceSalesforceKnowledgeArticleConfiguration =
  KendraDataSourceSalesforceKnowledgeArticleConfiguration
  { _kendraDataSourceSalesforceKnowledgeArticleConfigurationCustomKnowledgeArticleTypeConfigurations :: Maybe KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList
  , _kendraDataSourceSalesforceKnowledgeArticleConfigurationIncludedStates :: KendraDataSourceSalesforceKnowledgeArticleStateList
  , _kendraDataSourceSalesforceKnowledgeArticleConfigurationStandardKnowledgeArticleTypeConfiguration :: Maybe KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration
  } deriving (Show, Eq)

instance ToJSON KendraDataSourceSalesforceKnowledgeArticleConfiguration where
  toJSON KendraDataSourceSalesforceKnowledgeArticleConfiguration{..} =
    object $
    catMaybes
    [ fmap (("CustomKnowledgeArticleTypeConfigurations",) . toJSON) _kendraDataSourceSalesforceKnowledgeArticleConfigurationCustomKnowledgeArticleTypeConfigurations
    , (Just . ("IncludedStates",) . toJSON) _kendraDataSourceSalesforceKnowledgeArticleConfigurationIncludedStates
    , fmap (("StandardKnowledgeArticleTypeConfiguration",) . toJSON) _kendraDataSourceSalesforceKnowledgeArticleConfigurationStandardKnowledgeArticleTypeConfiguration
    ]

-- | Constructor for 'KendraDataSourceSalesforceKnowledgeArticleConfiguration'
-- containing required fields as arguments.
kendraDataSourceSalesforceKnowledgeArticleConfiguration
  :: KendraDataSourceSalesforceKnowledgeArticleStateList -- ^ 'kdsskacIncludedStates'
  -> KendraDataSourceSalesforceKnowledgeArticleConfiguration
kendraDataSourceSalesforceKnowledgeArticleConfiguration includedStatesarg =
  KendraDataSourceSalesforceKnowledgeArticleConfiguration
  { _kendraDataSourceSalesforceKnowledgeArticleConfigurationCustomKnowledgeArticleTypeConfigurations = Nothing
  , _kendraDataSourceSalesforceKnowledgeArticleConfigurationIncludedStates = includedStatesarg
  , _kendraDataSourceSalesforceKnowledgeArticleConfigurationStandardKnowledgeArticleTypeConfiguration = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceknowledgearticleconfiguration.html#cfn-kendra-datasource-salesforceknowledgearticleconfiguration-customknowledgearticletypeconfigurations
kdsskacCustomKnowledgeArticleTypeConfigurations :: Lens' KendraDataSourceSalesforceKnowledgeArticleConfiguration (Maybe KendraDataSourceSalesforceCustomKnowledgeArticleTypeConfigurationList)
kdsskacCustomKnowledgeArticleTypeConfigurations = lens _kendraDataSourceSalesforceKnowledgeArticleConfigurationCustomKnowledgeArticleTypeConfigurations (\s a -> s { _kendraDataSourceSalesforceKnowledgeArticleConfigurationCustomKnowledgeArticleTypeConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceknowledgearticleconfiguration.html#cfn-kendra-datasource-salesforceknowledgearticleconfiguration-includedstates
kdsskacIncludedStates :: Lens' KendraDataSourceSalesforceKnowledgeArticleConfiguration KendraDataSourceSalesforceKnowledgeArticleStateList
kdsskacIncludedStates = lens _kendraDataSourceSalesforceKnowledgeArticleConfigurationIncludedStates (\s a -> s { _kendraDataSourceSalesforceKnowledgeArticleConfigurationIncludedStates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-datasource-salesforceknowledgearticleconfiguration.html#cfn-kendra-datasource-salesforceknowledgearticleconfiguration-standardknowledgearticletypeconfiguration
kdsskacStandardKnowledgeArticleTypeConfiguration :: Lens' KendraDataSourceSalesforceKnowledgeArticleConfiguration (Maybe KendraDataSourceSalesforceStandardKnowledgeArticleTypeConfiguration)
kdsskacStandardKnowledgeArticleTypeConfiguration = lens _kendraDataSourceSalesforceKnowledgeArticleConfigurationStandardKnowledgeArticleTypeConfiguration (\s a -> s { _kendraDataSourceSalesforceKnowledgeArticleConfigurationStandardKnowledgeArticleTypeConfiguration = a })
