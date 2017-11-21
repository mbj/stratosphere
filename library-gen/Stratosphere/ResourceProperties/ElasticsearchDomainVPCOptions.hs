{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html

module Stratosphere.ResourceProperties.ElasticsearchDomainVPCOptions where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticsearchDomainVPCOptions. See
-- 'elasticsearchDomainVPCOptions' for a more convenient constructor.
data ElasticsearchDomainVPCOptions =
  ElasticsearchDomainVPCOptions
  { _elasticsearchDomainVPCOptionsSecurityGroupIds :: Maybe (ValList Text)
  , _elasticsearchDomainVPCOptionsSubnetIds :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainVPCOptions where
  toJSON ElasticsearchDomainVPCOptions{..} =
    object $
    catMaybes
    [ fmap (("SecurityGroupIds",) . toJSON) _elasticsearchDomainVPCOptionsSecurityGroupIds
    , fmap (("SubnetIds",) . toJSON) _elasticsearchDomainVPCOptionsSubnetIds
    ]

instance FromJSON ElasticsearchDomainVPCOptions where
  parseJSON (Object obj) =
    ElasticsearchDomainVPCOptions <$>
      (obj .:? "SecurityGroupIds") <*>
      (obj .:? "SubnetIds")
  parseJSON _ = mempty

-- | Constructor for 'ElasticsearchDomainVPCOptions' containing required
-- fields as arguments.
elasticsearchDomainVPCOptions
  :: ElasticsearchDomainVPCOptions
elasticsearchDomainVPCOptions  =
  ElasticsearchDomainVPCOptions
  { _elasticsearchDomainVPCOptionsSecurityGroupIds = Nothing
  , _elasticsearchDomainVPCOptionsSubnetIds = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-securitygroupids
edvpcoSecurityGroupIds :: Lens' ElasticsearchDomainVPCOptions (Maybe (ValList Text))
edvpcoSecurityGroupIds = lens _elasticsearchDomainVPCOptionsSecurityGroupIds (\s a -> s { _elasticsearchDomainVPCOptionsSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-vpcoptions.html#cfn-elasticsearch-domain-vpcoptions-subnetids
edvpcoSubnetIds :: Lens' ElasticsearchDomainVPCOptions (Maybe (ValList Text))
edvpcoSubnetIds = lens _elasticsearchDomainVPCOptionsSubnetIds (\s a -> s { _elasticsearchDomainVPCOptionsSubnetIds = a })
