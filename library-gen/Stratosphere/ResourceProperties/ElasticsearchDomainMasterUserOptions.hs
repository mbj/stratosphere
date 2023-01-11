
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-masteruseroptions.html

module Stratosphere.ResourceProperties.ElasticsearchDomainMasterUserOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ElasticsearchDomainMasterUserOptions. See
-- 'elasticsearchDomainMasterUserOptions' for a more convenient constructor.
data ElasticsearchDomainMasterUserOptions =
  ElasticsearchDomainMasterUserOptions
  { _elasticsearchDomainMasterUserOptionsMasterUserARN :: Maybe (Val Text)
  , _elasticsearchDomainMasterUserOptionsMasterUserName :: Maybe (Val Text)
  , _elasticsearchDomainMasterUserOptionsMasterUserPassword :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainMasterUserOptions where
  toJSON ElasticsearchDomainMasterUserOptions{..} =
    object $
    catMaybes
    [ fmap (("MasterUserARN",) . toJSON) _elasticsearchDomainMasterUserOptionsMasterUserARN
    , fmap (("MasterUserName",) . toJSON) _elasticsearchDomainMasterUserOptionsMasterUserName
    , fmap (("MasterUserPassword",) . toJSON) _elasticsearchDomainMasterUserOptionsMasterUserPassword
    ]

-- | Constructor for 'ElasticsearchDomainMasterUserOptions' containing
-- required fields as arguments.
elasticsearchDomainMasterUserOptions
  :: ElasticsearchDomainMasterUserOptions
elasticsearchDomainMasterUserOptions  =
  ElasticsearchDomainMasterUserOptions
  { _elasticsearchDomainMasterUserOptionsMasterUserARN = Nothing
  , _elasticsearchDomainMasterUserOptionsMasterUserName = Nothing
  , _elasticsearchDomainMasterUserOptionsMasterUserPassword = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-masteruseroptions.html#cfn-elasticsearch-domain-masteruseroptions-masteruserarn
edmuoMasterUserARN :: Lens' ElasticsearchDomainMasterUserOptions (Maybe (Val Text))
edmuoMasterUserARN = lens _elasticsearchDomainMasterUserOptionsMasterUserARN (\s a -> s { _elasticsearchDomainMasterUserOptionsMasterUserARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-masteruseroptions.html#cfn-elasticsearch-domain-masteruseroptions-masterusername
edmuoMasterUserName :: Lens' ElasticsearchDomainMasterUserOptions (Maybe (Val Text))
edmuoMasterUserName = lens _elasticsearchDomainMasterUserOptionsMasterUserName (\s a -> s { _elasticsearchDomainMasterUserOptionsMasterUserName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-masteruseroptions.html#cfn-elasticsearch-domain-masteruseroptions-masteruserpassword
edmuoMasterUserPassword :: Lens' ElasticsearchDomainMasterUserOptions (Maybe (Val Text))
edmuoMasterUserPassword = lens _elasticsearchDomainMasterUserOptionsMasterUserPassword (\s a -> s { _elasticsearchDomainMasterUserOptionsMasterUserPassword = a })
