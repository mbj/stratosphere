{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfigurationlist.html

module Stratosphere.ResourceProperties.KendraIndexDocumentMetadataConfigurationList where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraIndexDocumentMetadataConfiguration

-- | Full data type definition for
-- KendraIndexDocumentMetadataConfigurationList. See
-- 'kendraIndexDocumentMetadataConfigurationList' for a more convenient
-- constructor.
data KendraIndexDocumentMetadataConfigurationList =
  KendraIndexDocumentMetadataConfigurationList
  { _kendraIndexDocumentMetadataConfigurationListDocumentMetadataConfigurationList :: Maybe [KendraIndexDocumentMetadataConfiguration]
  } deriving (Show, Eq)

instance ToJSON KendraIndexDocumentMetadataConfigurationList where
  toJSON KendraIndexDocumentMetadataConfigurationList{..} =
    object $
    catMaybes
    [ fmap (("DocumentMetadataConfigurationList",) . toJSON) _kendraIndexDocumentMetadataConfigurationListDocumentMetadataConfigurationList
    ]

-- | Constructor for 'KendraIndexDocumentMetadataConfigurationList' containing
-- required fields as arguments.
kendraIndexDocumentMetadataConfigurationList
  :: KendraIndexDocumentMetadataConfigurationList
kendraIndexDocumentMetadataConfigurationList  =
  KendraIndexDocumentMetadataConfigurationList
  { _kendraIndexDocumentMetadataConfigurationListDocumentMetadataConfigurationList = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kendra-index-documentmetadataconfigurationlist.html#cfn-kendra-index-documentmetadataconfigurationlist-documentmetadataconfigurationlist
kidmclDocumentMetadataConfigurationList :: Lens' KendraIndexDocumentMetadataConfigurationList (Maybe [KendraIndexDocumentMetadataConfiguration])
kidmclDocumentMetadataConfigurationList = lens _kendraIndexDocumentMetadataConfigurationListDocumentMetadataConfigurationList (\s a -> s { _kendraIndexDocumentMetadataConfigurationListDocumentMetadataConfigurationList = a })
