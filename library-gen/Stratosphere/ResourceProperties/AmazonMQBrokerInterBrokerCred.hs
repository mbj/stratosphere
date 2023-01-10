
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-interbrokercred.html

module Stratosphere.ResourceProperties.AmazonMQBrokerInterBrokerCred where

import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQBrokerInterBrokerCred. See
-- 'amazonMQBrokerInterBrokerCred' for a more convenient constructor.
data AmazonMQBrokerInterBrokerCred =
  AmazonMQBrokerInterBrokerCred
  { _amazonMQBrokerInterBrokerCredPassword :: Val Text
  , _amazonMQBrokerInterBrokerCredUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerInterBrokerCred where
  toJSON AmazonMQBrokerInterBrokerCred{..} =
    object $
    catMaybes
    [ (Just . ("Password",) . toJSON) _amazonMQBrokerInterBrokerCredPassword
    , (Just . ("Username",) . toJSON) _amazonMQBrokerInterBrokerCredUsername
    ]

-- | Constructor for 'AmazonMQBrokerInterBrokerCred' containing required
-- fields as arguments.
amazonMQBrokerInterBrokerCred
  :: Val Text -- ^ 'amqbibcPassword'
  -> Val Text -- ^ 'amqbibcUsername'
  -> AmazonMQBrokerInterBrokerCred
amazonMQBrokerInterBrokerCred passwordarg usernamearg =
  AmazonMQBrokerInterBrokerCred
  { _amazonMQBrokerInterBrokerCredPassword = passwordarg
  , _amazonMQBrokerInterBrokerCredUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-interbrokercred.html#cfn-amazonmq-broker-interbrokercred-password
amqbibcPassword :: Lens' AmazonMQBrokerInterBrokerCred (Val Text)
amqbibcPassword = lens _amazonMQBrokerInterBrokerCredPassword (\s a -> s { _amazonMQBrokerInterBrokerCredPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-interbrokercred.html#cfn-amazonmq-broker-interbrokercred-username
amqbibcUsername :: Lens' AmazonMQBrokerInterBrokerCred (Val Text)
amqbibcUsername = lens _amazonMQBrokerInterBrokerCredUsername (\s a -> s { _amazonMQBrokerInterBrokerCredUsername = a })
