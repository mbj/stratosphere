{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html

module Stratosphere.ResourceProperties.KendraIndexDocumentMetadataConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraIndexRelevance
import Stratosphere.ResourceProperties.KendraIndexSearch

-- | Full data type definition for KendraIndexDocumentMetadataConfiguration.
-- See 'kendraIndexDocumentMetadataConfiguration' for a more convenient
-- constructor.
data KendraIndexDocumentMetadataConfiguration =
  KendraIndexDocumentMetadataConfiguration
  { _kendraIndexDocumentMetadataConfigurationName :: Val Text
  , _kendraIndexDocumentMetadataConfigurationRelevance :: Maybe KendraIndexRelevance
  , _kendraIndexDocumentMetadataConfigurationSearch :: Maybe KendraIndexSearch
  , _kendraIndexDocumentMetadataConfigurationType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KendraIndexDocumentMetadataConfiguration where
  toJSON KendraIndexDocumentMetadataConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("Name",) . toJSON) _kendraIndexDocumentMetadataConfigurationName
    , fmap (("Relevance",) . toJSON) _kendraIndexDocumentMetadataConfigurationRelevance
    , fmap (("Search",) . toJSON) _kendraIndexDocumentMetadataConfigurationSearch
    , (Just . ("Type",) . toJSON) _kendraIndexDocumentMetadataConfigurationType
    ]

-- | Constructor for 'KendraIndexDocumentMetadataConfiguration' containing
-- required fields as arguments.
kendraIndexDocumentMetadataConfiguration
  :: Val Text -- ^ 'kidmcName'
  -> Val Text -- ^ 'kidmcType'
  -> KendraIndexDocumentMetadataConfiguration
kendraIndexDocumentMetadataConfiguration namearg typearg =
  KendraIndexDocumentMetadataConfiguration
  { _kendraIndexDocumentMetadataConfigurationName = namearg
  , _kendraIndexDocumentMetadataConfigurationRelevance = Nothing
  , _kendraIndexDocumentMetadataConfigurationSearch = Nothing
  , _kendraIndexDocumentMetadataConfigurationType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html#cfn-kendra-index-documentmetadataconfiguration-name
kidmcName :: Lens' KendraIndexDocumentMetadataConfiguration (Val Text)
kidmcName = lens _kendraIndexDocumentMetadataConfigurationName (\s a -> s { _kendraIndexDocumentMetadataConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html#cfn-kendra-index-documentmetadataconfiguration-relevance
kidmcRelevance :: Lens' KendraIndexDocumentMetadataConfiguration (Maybe KendraIndexRelevance)
kidmcRelevance = lens _kendraIndexDocumentMetadataConfigurationRelevance (\s a -> s { _kendraIndexDocumentMetadataConfigurationRelevance = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html#cfn-kendra-index-documentmetadataconfiguration-search
kidmcSearch :: Lens' KendraIndexDocumentMetadataConfiguration (Maybe KendraIndexSearch)
kidmcSearch = lens _kendraIndexDocumentMetadataConfigurationSearch (\s a -> s { _kendraIndexDocumentMetadataConfigurationSearch = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfiguration.html#cfn-kendra-index-documentmetadataconfiguration-type
kidmcType :: Lens' KendraIndexDocumentMetadataConfiguration (Val Text)
kidmcType = lens _kendraIndexDocumentMetadataConfigurationType (\s a -> s { _kendraIndexDocumentMetadataConfigurationType = a })
