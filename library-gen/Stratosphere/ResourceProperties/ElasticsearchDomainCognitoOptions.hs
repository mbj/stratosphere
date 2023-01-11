
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html

module Stratosphere.ResourceProperties.ElasticsearchDomainCognitoOptions where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ElasticsearchDomainCognitoOptions. See
-- 'elasticsearchDomainCognitoOptions' for a more convenient constructor.
data ElasticsearchDomainCognitoOptions =
  ElasticsearchDomainCognitoOptions
  { _elasticsearchDomainCognitoOptionsEnabled :: Maybe (Val Bool)
  , _elasticsearchDomainCognitoOptionsIdentityPoolId :: Maybe (Val Text)
  , _elasticsearchDomainCognitoOptionsRoleArn :: Maybe (Val Text)
  , _elasticsearchDomainCognitoOptionsUserPoolId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticsearchDomainCognitoOptions where
  toJSON ElasticsearchDomainCognitoOptions{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON) _elasticsearchDomainCognitoOptionsEnabled
    , fmap (("IdentityPoolId",) . toJSON) _elasticsearchDomainCognitoOptionsIdentityPoolId
    , fmap (("RoleArn",) . toJSON) _elasticsearchDomainCognitoOptionsRoleArn
    , fmap (("UserPoolId",) . toJSON) _elasticsearchDomainCognitoOptionsUserPoolId
    ]

-- | Constructor for 'ElasticsearchDomainCognitoOptions' containing required
-- fields as arguments.
elasticsearchDomainCognitoOptions
  :: ElasticsearchDomainCognitoOptions
elasticsearchDomainCognitoOptions  =
  ElasticsearchDomainCognitoOptions
  { _elasticsearchDomainCognitoOptionsEnabled = Nothing
  , _elasticsearchDomainCognitoOptionsIdentityPoolId = Nothing
  , _elasticsearchDomainCognitoOptionsRoleArn = Nothing
  , _elasticsearchDomainCognitoOptionsUserPoolId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-enabled
edcoEnabled :: Lens' ElasticsearchDomainCognitoOptions (Maybe (Val Bool))
edcoEnabled = lens _elasticsearchDomainCognitoOptionsEnabled (\s a -> s { _elasticsearchDomainCognitoOptionsEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-identitypoolid
edcoIdentityPoolId :: Lens' ElasticsearchDomainCognitoOptions (Maybe (Val Text))
edcoIdentityPoolId = lens _elasticsearchDomainCognitoOptionsIdentityPoolId (\s a -> s { _elasticsearchDomainCognitoOptionsIdentityPoolId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-rolearn
edcoRoleArn :: Lens' ElasticsearchDomainCognitoOptions (Maybe (Val Text))
edcoRoleArn = lens _elasticsearchDomainCognitoOptionsRoleArn (\s a -> s { _elasticsearchDomainCognitoOptionsRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticsearch-domain-cognitooptions.html#cfn-elasticsearch-domain-cognitooptions-userpoolid
edcoUserPoolId :: Lens' ElasticsearchDomainCognitoOptions (Maybe (Val Text))
edcoUserPoolId = lens _elasticsearchDomainCognitoOptionsUserPoolId (\s a -> s { _elasticsearchDomainCognitoOptionsUserPoolId = a })
