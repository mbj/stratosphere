{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html

module Stratosphere.ResourceProperties.AmazonMQBrokerUser where

import Stratosphere.ResourceImports


-- | Full data type definition for AmazonMQBrokerUser. See
-- 'amazonMQBrokerUser' for a more convenient constructor.
data AmazonMQBrokerUser =
  AmazonMQBrokerUser
  { _amazonMQBrokerUserConsoleAccess :: Maybe (Val Bool)
  , _amazonMQBrokerUserGroups :: Maybe (ValList Text)
  , _amazonMQBrokerUserPassword :: Val Text
  , _amazonMQBrokerUserUsername :: Val Text
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerUser where
  toJSON AmazonMQBrokerUser{..} =
    object $
    catMaybes
    [ fmap (("ConsoleAccess",) . toJSON) _amazonMQBrokerUserConsoleAccess
    , fmap (("Groups",) . toJSON) _amazonMQBrokerUserGroups
    , (Just . ("Password",) . toJSON) _amazonMQBrokerUserPassword
    , (Just . ("Username",) . toJSON) _amazonMQBrokerUserUsername
    ]

-- | Constructor for 'AmazonMQBrokerUser' containing required fields as
-- arguments.
amazonMQBrokerUser
  :: Val Text -- ^ 'amqbuPassword'
  -> Val Text -- ^ 'amqbuUsername'
  -> AmazonMQBrokerUser
amazonMQBrokerUser passwordarg usernamearg =
  AmazonMQBrokerUser
  { _amazonMQBrokerUserConsoleAccess = Nothing
  , _amazonMQBrokerUserGroups = Nothing
  , _amazonMQBrokerUserPassword = passwordarg
  , _amazonMQBrokerUserUsername = usernamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-consoleaccess
amqbuConsoleAccess :: Lens' AmazonMQBrokerUser (Maybe (Val Bool))
amqbuConsoleAccess = lens _amazonMQBrokerUserConsoleAccess (\s a -> s { _amazonMQBrokerUserConsoleAccess = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-groups
amqbuGroups :: Lens' AmazonMQBrokerUser (Maybe (ValList Text))
amqbuGroups = lens _amazonMQBrokerUserGroups (\s a -> s { _amazonMQBrokerUserGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-password
amqbuPassword :: Lens' AmazonMQBrokerUser (Val Text)
amqbuPassword = lens _amazonMQBrokerUserPassword (\s a -> s { _amazonMQBrokerUserPassword = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-user.html#cfn-amazonmq-broker-user-username
amqbuUsername :: Lens' AmazonMQBrokerUser (Val Text)
amqbuUsername = lens _amazonMQBrokerUserUsername (\s a -> s { _amazonMQBrokerUserUsername = a })
