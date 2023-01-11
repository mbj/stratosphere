
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-zoneawarenessconfig.html

module Stratosphere.ResourceProperties.ElasticsearchDomainZoneAwarenessConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ElasticsearchDomainZoneAwarenessConfig. See
-- 'elasticsearchDomainZoneAwarenessConfig' for a more convenient
-- constructor.
data ElasticsearchDomainZoneAwarenessConfig =
  ElasticsearchDomainZoneAwarenessConfig
  { _elasticsearchDomainZoneAwarenessConfigAvailabilityZoneCount :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainZoneAwarenessConfig where
  toJSON ElasticsearchDomainZoneAwarenessConfig{..} =
    object $
    catMaybes
    [ fmap (("AvailabilityZoneCount",) . toJSON) _elasticsearchDomainZoneAwarenessConfigAvailabilityZoneCount
    ]

-- | Constructor for 'ElasticsearchDomainZoneAwarenessConfig' containing
-- required fields as arguments.
elasticsearchDomainZoneAwarenessConfig
  :: ElasticsearchDomainZoneAwarenessConfig
elasticsearchDomainZoneAwarenessConfig  =
  ElasticsearchDomainZoneAwarenessConfig
  { _elasticsearchDomainZoneAwarenessConfigAvailabilityZoneCount = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-zoneawarenessconfig.html#cfn-elasticsearch-domain-zoneawarenessconfig-availabilityzonecount
edzacAvailabilityZoneCount :: Lens' ElasticsearchDomainZoneAwarenessConfig (Maybe (Val Integer))
edzacAvailabilityZoneCount = lens _elasticsearchDomainZoneAwarenessConfigAvailabilityZoneCount (\s a -> s { _elasticsearchDomainZoneAwarenessConfigAvailabilityZoneCount = a })
