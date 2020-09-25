{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-index.html

module Stratosphere.Resources.KendraIndex where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KendraIndexCapacityUnitsConfiguration
import Stratosphere.ResourceProperties.KendraIndexDocumentMetadataConfigurationList
import Stratosphere.ResourceProperties.KendraIndexServerSideEncryptionConfiguration
import Stratosphere.ResourceProperties.KendraIndexTagList

-- | Full data type definition for KendraIndex. See 'kendraIndex' for a more
-- convenient constructor.
data KendraIndex =
  KendraIndex
  { _kendraIndexCapacityUnits :: Maybe KendraIndexCapacityUnitsConfiguration
  , _kendraIndexDescription :: Maybe (Val Text)
  , _kendraIndexDocumentMetadataConfigurations :: Maybe KendraIndexDocumentMetadataConfigurationList
  , _kendraIndexEdition :: Val Text
  , _kendraIndexName :: Val Text
  , _kendraIndexRoleArn :: Val Text
  , _kendraIndexServerSideEncryptionConfiguration :: Maybe KendraIndexServerSideEncryptionConfiguration
  , _kendraIndexTags :: Maybe KendraIndexTagList
  } deriving (Show, Eq)

instance ToResourceProperties KendraIndex where
  toResourceProperties KendraIndex{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Kendra::Index"
    , resourcePropertiesProperties =
        hashMapFromList $ catMaybes
        [ fmap (("CapacityUnits",) . toJSON) _kendraIndexCapacityUnits
        , fmap (("Description",) . toJSON) _kendraIndexDescription
        , fmap (("DocumentMetadataConfigurations",) . toJSON) _kendraIndexDocumentMetadataConfigurations
        , (Just . ("Edition",) . toJSON) _kendraIndexEdition
        , (Just . ("Name",) . toJSON) _kendraIndexName
        , (Just . ("RoleArn",) . toJSON) _kendraIndexRoleArn
        , fmap (("ServerSideEncryptionConfiguration",) . toJSON) _kendraIndexServerSideEncryptionConfiguration
        , fmap (("Tags",) . toJSON) _kendraIndexTags
        ]
    }

-- | Constructor for 'KendraIndex' containing required fields as arguments.
kendraIndex
  :: Val Text -- ^ 'kiEdition'
  -> Val Text -- ^ 'kiName'
  -> Val Text -- ^ 'kiRoleArn'
  -> KendraIndex
kendraIndex editionarg namearg roleArnarg =
  KendraIndex
  { _kendraIndexCapacityUnits = Nothing
  , _kendraIndexDescription = Nothing
  , _kendraIndexDocumentMetadataConfigurations = Nothing
  , _kendraIndexEdition = editionarg
  , _kendraIndexName = namearg
  , _kendraIndexRoleArn = roleArnarg
  , _kendraIndexServerSideEncryptionConfiguration = Nothing
  , _kendraIndexTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-index.html#cfn-kendra-index-capacityunits
kiCapacityUnits :: Lens' KendraIndex (Maybe KendraIndexCapacityUnitsConfiguration)
kiCapacityUnits = lens _kendraIndexCapacityUnits (\s a -> s { _kendraIndexCapacityUnits = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-index.html#cfn-kendra-index-description
kiDescription :: Lens' KendraIndex (Maybe (Val Text))
kiDescription = lens _kendraIndexDescription (\s a -> s { _kendraIndexDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-index.html#cfn-kendra-index-documentmetadataconfigurations
kiDocumentMetadataConfigurations :: Lens' KendraIndex (Maybe KendraIndexDocumentMetadataConfigurationList)
kiDocumentMetadataConfigurations = lens _kendraIndexDocumentMetadataConfigurations (\s a -> s { _kendraIndexDocumentMetadataConfigurations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-index.html#cfn-kendra-index-edition
kiEdition :: Lens' KendraIndex (Val Text)
kiEdition = lens _kendraIndexEdition (\s a -> s { _kendraIndexEdition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-index.html#cfn-kendra-index-name
kiName :: Lens' KendraIndex (Val Text)
kiName = lens _kendraIndexName (\s a -> s { _kendraIndexName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-index.html#cfn-kendra-index-rolearn
kiRoleArn :: Lens' KendraIndex (Val Text)
kiRoleArn = lens _kendraIndexRoleArn (\s a -> s { _kendraIndexRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-index.html#cfn-kendra-index-serversideencryptionconfiguration
kiServerSideEncryptionConfiguration :: Lens' KendraIndex (Maybe KendraIndexServerSideEncryptionConfiguration)
kiServerSideEncryptionConfiguration = lens _kendraIndexServerSideEncryptionConfiguration (\s a -> s { _kendraIndexServerSideEncryptionConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kendra-index.html#cfn-kendra-index-tags
kiTags :: Lens' KendraIndex (Maybe KendraIndexTagList)
kiTags = lens _kendraIndexTags (\s a -> s { _kendraIndexTags = a })
