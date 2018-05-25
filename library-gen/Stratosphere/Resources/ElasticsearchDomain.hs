{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html

module Stratosphere.Resources.ElasticsearchDomain where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticsearchDomainEBSOptions
import Stratosphere.ResourceProperties.ElasticsearchDomainElasticsearchClusterConfig
import Stratosphere.ResourceProperties.ElasticsearchDomainEncryptionAtRestOptions
import Stratosphere.ResourceProperties.ElasticsearchDomainSnapshotOptions
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.ElasticsearchDomainVPCOptions

-- | Full data type definition for ElasticsearchDomain. See
-- 'elasticsearchDomain' for a more convenient constructor.
data ElasticsearchDomain =
  ElasticsearchDomain
  { _elasticsearchDomainAccessPolicies :: Maybe Object
  , _elasticsearchDomainAdvancedOptions :: Maybe Object
  , _elasticsearchDomainDomainName :: Maybe (Val Text)
  , _elasticsearchDomainEBSOptions :: Maybe ElasticsearchDomainEBSOptions
  , _elasticsearchDomainElasticsearchClusterConfig :: Maybe ElasticsearchDomainElasticsearchClusterConfig
  , _elasticsearchDomainElasticsearchVersion :: Maybe (Val Text)
  , _elasticsearchDomainEncryptionAtRestOptions :: Maybe ElasticsearchDomainEncryptionAtRestOptions
  , _elasticsearchDomainSnapshotOptions :: Maybe ElasticsearchDomainSnapshotOptions
  , _elasticsearchDomainTags :: Maybe [Tag]
  , _elasticsearchDomainVPCOptions :: Maybe ElasticsearchDomainVPCOptions
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomain where
  toJSON ElasticsearchDomain{..} =
    object $
    catMaybes
    [ fmap (("AccessPolicies",) . toJSON) _elasticsearchDomainAccessPolicies
    , fmap (("AdvancedOptions",) . toJSON) _elasticsearchDomainAdvancedOptions
    , fmap (("DomainName",) . toJSON) _elasticsearchDomainDomainName
    , fmap (("EBSOptions",) . toJSON) _elasticsearchDomainEBSOptions
    , fmap (("ElasticsearchClusterConfig",) . toJSON) _elasticsearchDomainElasticsearchClusterConfig
    , fmap (("ElasticsearchVersion",) . toJSON) _elasticsearchDomainElasticsearchVersion
    , fmap (("EncryptionAtRestOptions",) . toJSON) _elasticsearchDomainEncryptionAtRestOptions
    , fmap (("SnapshotOptions",) . toJSON) _elasticsearchDomainSnapshotOptions
    , fmap (("Tags",) . toJSON) _elasticsearchDomainTags
    , fmap (("VPCOptions",) . toJSON) _elasticsearchDomainVPCOptions
    ]

instance FromJSON ElasticsearchDomain where
  parseJSON (Object obj) =
    ElasticsearchDomain <$>
      (obj .:? "AccessPolicies") <*>
      (obj .:? "AdvancedOptions") <*>
      (obj .:? "DomainName") <*>
      (obj .:? "EBSOptions") <*>
      (obj .:? "ElasticsearchClusterConfig") <*>
      (obj .:? "ElasticsearchVersion") <*>
      (obj .:? "EncryptionAtRestOptions") <*>
      (obj .:? "SnapshotOptions") <*>
      (obj .:? "Tags") <*>
      (obj .:? "VPCOptions")
  parseJSON _ = mempty

-- | Constructor for 'ElasticsearchDomain' containing required fields as
-- arguments.
elasticsearchDomain
  :: ElasticsearchDomain
elasticsearchDomain  =
  ElasticsearchDomain
  { _elasticsearchDomainAccessPolicies = Nothing
  , _elasticsearchDomainAdvancedOptions = Nothing
  , _elasticsearchDomainDomainName = Nothing
  , _elasticsearchDomainEBSOptions = Nothing
  , _elasticsearchDomainElasticsearchClusterConfig = Nothing
  , _elasticsearchDomainElasticsearchVersion = Nothing
  , _elasticsearchDomainEncryptionAtRestOptions = Nothing
  , _elasticsearchDomainSnapshotOptions = Nothing
  , _elasticsearchDomainTags = Nothing
  , _elasticsearchDomainVPCOptions = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-accesspolicies
edAccessPolicies :: Lens' ElasticsearchDomain (Maybe Object)
edAccessPolicies = lens _elasticsearchDomainAccessPolicies (\s a -> s { _elasticsearchDomainAccessPolicies = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-advancedoptions
edAdvancedOptions :: Lens' ElasticsearchDomain (Maybe Object)
edAdvancedOptions = lens _elasticsearchDomainAdvancedOptions (\s a -> s { _elasticsearchDomainAdvancedOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-domainname
edDomainName :: Lens' ElasticsearchDomain (Maybe (Val Text))
edDomainName = lens _elasticsearchDomainDomainName (\s a -> s { _elasticsearchDomainDomainName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-ebsoptions
edEBSOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainEBSOptions)
edEBSOptions = lens _elasticsearchDomainEBSOptions (\s a -> s { _elasticsearchDomainEBSOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-elasticsearchclusterconfig
edElasticsearchClusterConfig :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainElasticsearchClusterConfig)
edElasticsearchClusterConfig = lens _elasticsearchDomainElasticsearchClusterConfig (\s a -> s { _elasticsearchDomainElasticsearchClusterConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-elasticsearchversion
edElasticsearchVersion :: Lens' ElasticsearchDomain (Maybe (Val Text))
edElasticsearchVersion = lens _elasticsearchDomainElasticsearchVersion (\s a -> s { _elasticsearchDomainElasticsearchVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-encryptionatrestoptions
edEncryptionAtRestOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainEncryptionAtRestOptions)
edEncryptionAtRestOptions = lens _elasticsearchDomainEncryptionAtRestOptions (\s a -> s { _elasticsearchDomainEncryptionAtRestOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-snapshotoptions
edSnapshotOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainSnapshotOptions)
edSnapshotOptions = lens _elasticsearchDomainSnapshotOptions (\s a -> s { _elasticsearchDomainSnapshotOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-tags
edTags :: Lens' ElasticsearchDomain (Maybe [Tag])
edTags = lens _elasticsearchDomainTags (\s a -> s { _elasticsearchDomainTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-vpcoptions
edVPCOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainVPCOptions)
edVPCOptions = lens _elasticsearchDomainVPCOptions (\s a -> s { _elasticsearchDomainVPCOptions = a })
