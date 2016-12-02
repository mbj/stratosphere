{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html

module Stratosphere.ResourceProperties.ElasticsearchDomainElasticsearchClusterConfig where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticsearchDomainElasticsearchClusterConfig. See
-- | 'elasticsearchDomainElasticsearchClusterConfig' for a more convenient
-- | constructor.
data ElasticsearchDomainElasticsearchClusterConfig =
  ElasticsearchDomainElasticsearchClusterConfig
  { _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterCount :: Maybe (Val Integer')
  , _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterEnabled :: Maybe (Val Bool')
  , _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterType :: Maybe (Val Text)
  , _elasticsearchDomainElasticsearchClusterConfigInstanceCount :: Maybe (Val Integer')
  , _elasticsearchDomainElasticsearchClusterConfigInstanceType :: Maybe (Val Text)
  , _elasticsearchDomainElasticsearchClusterConfigZoneAwarenessEnabled :: Maybe (Val Bool')
  } deriving (Show, Generic)

instance ToJSON ElasticsearchDomainElasticsearchClusterConfig where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 46, omitNothingFields = True }

instance FromJSON ElasticsearchDomainElasticsearchClusterConfig where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 46, omitNothingFields = True }

-- | Constructor for 'ElasticsearchDomainElasticsearchClusterConfig'
-- | containing required fields as arguments.
elasticsearchDomainElasticsearchClusterConfig
  :: ElasticsearchDomainElasticsearchClusterConfig
elasticsearchDomainElasticsearchClusterConfig  =
  ElasticsearchDomainElasticsearchClusterConfig
  { _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterCount = Nothing
  , _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterEnabled = Nothing
  , _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterType = Nothing
  , _elasticsearchDomainElasticsearchClusterConfigInstanceCount = Nothing
  , _elasticsearchDomainElasticsearchClusterConfigInstanceType = Nothing
  , _elasticsearchDomainElasticsearchClusterConfigZoneAwarenessEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmastercount
edeccDedicatedMasterCount :: Lens' ElasticsearchDomainElasticsearchClusterConfig (Maybe (Val Integer'))
edeccDedicatedMasterCount = lens _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterCount (\s a -> s { _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmasterenabled
edeccDedicatedMasterEnabled :: Lens' ElasticsearchDomainElasticsearchClusterConfig (Maybe (Val Bool'))
edeccDedicatedMasterEnabled = lens _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterEnabled (\s a -> s { _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-dedicatedmastertype
edeccDedicatedMasterType :: Lens' ElasticsearchDomainElasticsearchClusterConfig (Maybe (Val Text))
edeccDedicatedMasterType = lens _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterType (\s a -> s { _elasticsearchDomainElasticsearchClusterConfigDedicatedMasterType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-instancecount
edeccInstanceCount :: Lens' ElasticsearchDomainElasticsearchClusterConfig (Maybe (Val Integer'))
edeccInstanceCount = lens _elasticsearchDomainElasticsearchClusterConfigInstanceCount (\s a -> s { _elasticsearchDomainElasticsearchClusterConfigInstanceCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-instnacetype
edeccInstanceType :: Lens' ElasticsearchDomainElasticsearchClusterConfig (Maybe (Val Text))
edeccInstanceType = lens _elasticsearchDomainElasticsearchClusterConfigInstanceType (\s a -> s { _elasticsearchDomainElasticsearchClusterConfigInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-elasticsearchclusterconfig.html#cfn-elasticsearch-domain-elasticseachclusterconfig-zoneawarenessenabled
edeccZoneAwarenessEnabled :: Lens' ElasticsearchDomainElasticsearchClusterConfig (Maybe (Val Bool'))
edeccZoneAwarenessEnabled = lens _elasticsearchDomainElasticsearchClusterConfigZoneAwarenessEnabled (\s a -> s { _elasticsearchDomainElasticsearchClusterConfigZoneAwarenessEnabled = a })
