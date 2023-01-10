
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-configurationid.html

module Stratosphere.ResourceProperties.AmazonMQBrokerConfigurationId where

import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQBrokerConfigurationId. See
-- 'amazonMQBrokerConfigurationId' for a more convenient constructor.
data AmazonMQBrokerConfigurationId =
  AmazonMQBrokerConfigurationId
  { _amazonMQBrokerConfigurationIdId :: Val Text
  , _amazonMQBrokerConfigurationIdRevision :: Val Integer
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerConfigurationId where
  toJSON AmazonMQBrokerConfigurationId{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _amazonMQBrokerConfigurationIdId
    , (Just . ("Revision",) . toJSON) _amazonMQBrokerConfigurationIdRevision
    ]

-- | Constructor for 'AmazonMQBrokerConfigurationId' containing required
-- fields as arguments.
amazonMQBrokerConfigurationId
  :: Val Text -- ^ 'amqbciId'
  -> Val Integer -- ^ 'amqbciRevision'
  -> AmazonMQBrokerConfigurationId
amazonMQBrokerConfigurationId idarg revisionarg =
  AmazonMQBrokerConfigurationId
  { _amazonMQBrokerConfigurationIdId = idarg
  , _amazonMQBrokerConfigurationIdRevision = revisionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-configurationid.html#cfn-amazonmq-broker-configurationid-id
amqbciId :: Lens' AmazonMQBrokerConfigurationId (Val Text)
amqbciId = lens _amazonMQBrokerConfigurationIdId (\s a -> s { _amazonMQBrokerConfigurationIdId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-configurationid.html#cfn-amazonmq-broker-configurationid-revision
amqbciRevision :: Lens' AmazonMQBrokerConfigurationId (Val Integer)
amqbciRevision = lens _amazonMQBrokerConfigurationIdRevision (\s a -> s { _amazonMQBrokerConfigurationIdRevision = a })
