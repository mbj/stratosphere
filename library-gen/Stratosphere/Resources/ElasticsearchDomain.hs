{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html

module Stratosphere.Resources.ElasticsearchDomain where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticsearchDomainAdvancedSecurityOptionsInput
import Stratosphere.ResourceProperties.ElasticsearchDomainCognitoOptions
import Stratosphere.ResourceProperties.ElasticsearchDomainDomainEndpointOptions
import Stratosphere.ResourceProperties.ElasticsearchDomainEBSOptions
import Stratosphere.ResourceProperties.ElasticsearchDomainElasticsearchClusterConfig
import Stratosphere.ResourceProperties.ElasticsearchDomainEncryptionAtRestOptions
import Stratosphere.ResourceProperties.ElasticsearchDomainLogPublishingOption
import Stratosphere.ResourceProperties.ElasticsearchDomainNodeToNodeEncryptionOptions
import Stratosphere.ResourceProperties.ElasticsearchDomainSnapshotOptions
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.ElasticsearchDomainVPCOptions

-- | Full data type definition for ElasticsearchDomain. See
-- 'elasticsearchDomain' for a more convenient constructor.
data ElasticsearchDomain =
  ElasticsearchDomain
  { _elasticsearchDomainAccessPolicies :: Maybe Object
  , _elasticsearchDomainAdvancedOptions :: Maybe Object
  , _elasticsearchDomainAdvancedSecurityOptions :: Maybe ElasticsearchDomainAdvancedSecurityOptionsInput
  , _elasticsearchDomainCognitoOptions :: Maybe ElasticsearchDomainCognitoOptions
  , _elasticsearchDomainDomainEndpointOptions :: Maybe ElasticsearchDomainDomainEndpointOptions
  , _elasticsearchDomainDomainName :: Maybe (Val Text)
  , _elasticsearchDomainEBSOptions :: Maybe ElasticsearchDomainEBSOptions
  , _elasticsearchDomainElasticsearchClusterConfig :: Maybe ElasticsearchDomainElasticsearchClusterConfig
  , _elasticsearchDomainElasticsearchVersion :: Maybe (Val Text)
  , _elasticsearchDomainEncryptionAtRestOptions :: Maybe ElasticsearchDomainEncryptionAtRestOptions
  , _elasticsearchDomainLogPublishingOptions :: Maybe (Map Text ElasticsearchDomainLogPublishingOption)
  , _elasticsearchDomainNodeToNodeEncryptionOptions :: Maybe ElasticsearchDomainNodeToNodeEncryptionOptions
  , _elasticsearchDomainSnapshotOptions :: Maybe ElasticsearchDomainSnapshotOptions
  , _elasticsearchDomainTags :: Maybe [Tag]
  , _elasticsearchDomainVPCOptions :: Maybe ElasticsearchDomainVPCOptions
  } deriving (Show, Eq)

instance ToResourceProperties ElasticsearchDomain where
  toResourceProperties ElasticsearchDomain{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::Elasticsearch::Domain"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AccessPolicies",) . toJSON) _elasticsearchDomainAccessPolicies
        , fmap (("AdvancedOptions",) . toJSON) _elasticsearchDomainAdvancedOptions
        , fmap (("AdvancedSecurityOptions",) . toJSON) _elasticsearchDomainAdvancedSecurityOptions
        , fmap (("CognitoOptions",) . toJSON) _elasticsearchDomainCognitoOptions
        , fmap (("DomainEndpointOptions",) . toJSON) _elasticsearchDomainDomainEndpointOptions
        , fmap (("DomainName",) . toJSON) _elasticsearchDomainDomainName
        , fmap (("EBSOptions",) . toJSON) _elasticsearchDomainEBSOptions
        , fmap (("ElasticsearchClusterConfig",) . toJSON) _elasticsearchDomainElasticsearchClusterConfig
        , fmap (("ElasticsearchVersion",) . toJSON) _elasticsearchDomainElasticsearchVersion
        , fmap (("EncryptionAtRestOptions",) . toJSON) _elasticsearchDomainEncryptionAtRestOptions
        , fmap (("LogPublishingOptions",) . toJSON) _elasticsearchDomainLogPublishingOptions
        , fmap (("NodeToNodeEncryptionOptions",) . toJSON) _elasticsearchDomainNodeToNodeEncryptionOptions
        , fmap (("SnapshotOptions",) . toJSON) _elasticsearchDomainSnapshotOptions
        , fmap (("Tags",) . toJSON) _elasticsearchDomainTags
        , fmap (("VPCOptions",) . toJSON) _elasticsearchDomainVPCOptions
        ]
    }

-- | Constructor for 'ElasticsearchDomain' containing required fields as
-- arguments.
elasticsearchDomain
  :: ElasticsearchDomain
elasticsearchDomain  =
  ElasticsearchDomain
  { _elasticsearchDomainAccessPolicies = Nothing
  , _elasticsearchDomainAdvancedOptions = Nothing
  , _elasticsearchDomainAdvancedSecurityOptions = Nothing
  , _elasticsearchDomainCognitoOptions = Nothing
  , _elasticsearchDomainDomainEndpointOptions = Nothing
  , _elasticsearchDomainDomainName = Nothing
  , _elasticsearchDomainEBSOptions = Nothing
  , _elasticsearchDomainElasticsearchClusterConfig = Nothing
  , _elasticsearchDomainElasticsearchVersion = Nothing
  , _elasticsearchDomainEncryptionAtRestOptions = Nothing
  , _elasticsearchDomainLogPublishingOptions = Nothing
  , _elasticsearchDomainNodeToNodeEncryptionOptions = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-advancedsecurityoptions
edAdvancedSecurityOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainAdvancedSecurityOptionsInput)
edAdvancedSecurityOptions = lens _elasticsearchDomainAdvancedSecurityOptions (\s a -> s { _elasticsearchDomainAdvancedSecurityOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-cognitooptions
edCognitoOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainCognitoOptions)
edCognitoOptions = lens _elasticsearchDomainCognitoOptions (\s a -> s { _elasticsearchDomainCognitoOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-domainendpointoptions
edDomainEndpointOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainDomainEndpointOptions)
edDomainEndpointOptions = lens _elasticsearchDomainDomainEndpointOptions (\s a -> s { _elasticsearchDomainDomainEndpointOptions = a })

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-logpublishingoptions
edLogPublishingOptions :: Lens' ElasticsearchDomain (Maybe (Map Text ElasticsearchDomainLogPublishingOption))
edLogPublishingOptions = lens _elasticsearchDomainLogPublishingOptions (\s a -> s { _elasticsearchDomainLogPublishingOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-nodetonodeencryptionoptions
edNodeToNodeEncryptionOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainNodeToNodeEncryptionOptions)
edNodeToNodeEncryptionOptions = lens _elasticsearchDomainNodeToNodeEncryptionOptions (\s a -> s { _elasticsearchDomainNodeToNodeEncryptionOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-snapshotoptions
edSnapshotOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainSnapshotOptions)
edSnapshotOptions = lens _elasticsearchDomainSnapshotOptions (\s a -> s { _elasticsearchDomainSnapshotOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-tags
edTags :: Lens' ElasticsearchDomain (Maybe [Tag])
edTags = lens _elasticsearchDomainTags (\s a -> s { _elasticsearchDomainTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-vpcoptions
edVPCOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainVPCOptions)
edVPCOptions = lens _elasticsearchDomainVPCOptions (\s a -> s { _elasticsearchDomainVPCOptions = a })
