{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html

module Stratosphere.Resources.ElasticsearchDomain where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElasticsearchDomainEBSOptions
import Stratosphere.ResourceProperties.ElasticsearchDomainElasticsearchClusterConfig
import Stratosphere.ResourceProperties.ElasticsearchDomainSnapshotOptions
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for ElasticsearchDomain. See
-- | 'elasticsearchDomain' for a more convenient constructor.
data ElasticsearchDomain =
  ElasticsearchDomain
  { _elasticsearchDomainAccessPolicies :: Maybe Object
  , _elasticsearchDomainAdvancedOptions :: Maybe Object
  , _elasticsearchDomainDomainName :: Maybe (Val Text)
  , _elasticsearchDomainEBSOptions :: Maybe ElasticsearchDomainEBSOptions
  , _elasticsearchDomainElasticsearchClusterConfig :: Maybe ElasticsearchDomainElasticsearchClusterConfig
  , _elasticsearchDomainElasticsearchVersion :: Maybe (Val Text)
  , _elasticsearchDomainSnapshotOptions :: Maybe ElasticsearchDomainSnapshotOptions
  , _elasticsearchDomainTags :: Maybe [Tag]
  } deriving (Show, Eq, Generic)

instance ToJSON ElasticsearchDomain where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON ElasticsearchDomain where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'ElasticsearchDomain' containing required fields as
-- | arguments.
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
  , _elasticsearchDomainSnapshotOptions = Nothing
  , _elasticsearchDomainTags = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-snapshotoptions
edSnapshotOptions :: Lens' ElasticsearchDomain (Maybe ElasticsearchDomainSnapshotOptions)
edSnapshotOptions = lens _elasticsearchDomainSnapshotOptions (\s a -> s { _elasticsearchDomainSnapshotOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticsearch-domain.html#cfn-elasticsearch-domain-tags
edTags :: Lens' ElasticsearchDomain (Maybe [Tag])
edTags = lens _elasticsearchDomainTags (\s a -> s { _elasticsearchDomainTags = a })
