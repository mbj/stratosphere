
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-domainendpointoptions.html

module Stratosphere.ResourceProperties.ElasticsearchDomainDomainEndpointOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ElasticsearchDomainDomainEndpointOptions.
-- See 'elasticsearchDomainDomainEndpointOptions' for a more convenient
-- constructor.
data ElasticsearchDomainDomainEndpointOptions =
  ElasticsearchDomainDomainEndpointOptions
  { _elasticsearchDomainDomainEndpointOptionsEnforceHTTPS :: Maybe (Val Bool)
  , _elasticsearchDomainDomainEndpointOptionsTLSSecurityPolicy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainDomainEndpointOptions where
  toJSON ElasticsearchDomainDomainEndpointOptions{..} =
    object $
    catMaybes
    [ fmap (("EnforceHTTPS",) . toJSON) _elasticsearchDomainDomainEndpointOptionsEnforceHTTPS
    , fmap (("TLSSecurityPolicy",) . toJSON) _elasticsearchDomainDomainEndpointOptionsTLSSecurityPolicy
    ]

-- | Constructor for 'ElasticsearchDomainDomainEndpointOptions' containing
-- required fields as arguments.
elasticsearchDomainDomainEndpointOptions
  :: ElasticsearchDomainDomainEndpointOptions
elasticsearchDomainDomainEndpointOptions  =
  ElasticsearchDomainDomainEndpointOptions
  { _elasticsearchDomainDomainEndpointOptionsEnforceHTTPS = Nothing
  , _elasticsearchDomainDomainEndpointOptionsTLSSecurityPolicy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-domainendpointoptions.html#cfn-elasticsearch-domain-domainendpointoptions-enforcehttps
eddeoEnforceHTTPS :: Lens' ElasticsearchDomainDomainEndpointOptions (Maybe (Val Bool))
eddeoEnforceHTTPS = lens _elasticsearchDomainDomainEndpointOptionsEnforceHTTPS (\s a -> s { _elasticsearchDomainDomainEndpointOptionsEnforceHTTPS = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-domainendpointoptions.html#cfn-elasticsearch-domain-domainendpointoptions-tlssecuritypolicy
eddeoTLSSecurityPolicy :: Lens' ElasticsearchDomainDomainEndpointOptions (Maybe (Val Text))
eddeoTLSSecurityPolicy = lens _elasticsearchDomainDomainEndpointOptionsTLSSecurityPolicy (\s a -> s { _elasticsearchDomainDomainEndpointOptionsTLSSecurityPolicy = a })
