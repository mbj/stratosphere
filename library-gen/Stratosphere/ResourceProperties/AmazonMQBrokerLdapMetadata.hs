{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapmetadata.html

module Stratosphere.ResourceProperties.AmazonMQBrokerLdapMetadata where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AmazonMQBrokerInterBrokerCred
import Stratosphere.ResourceProperties.AmazonMQBrokerServerMetadata

-- | Full data type definition for AmazonMQBrokerLdapMetadata. See
-- 'amazonMQBrokerLdapMetadata' for a more convenient constructor.
data AmazonMQBrokerLdapMetadata =
  AmazonMQBrokerLdapMetadata
  { _amazonMQBrokerLdapMetadataInterBrokerCreds :: Maybe [AmazonMQBrokerInterBrokerCred]
  , _amazonMQBrokerLdapMetadataServerMetadata :: AmazonMQBrokerServerMetadata
  } deriving (Show, Eq)

instance ToJSON AmazonMQBrokerLdapMetadata where
  toJSON AmazonMQBrokerLdapMetadata{..} =
    object $
    catMaybes
    [ fmap (("InterBrokerCreds",) . toJSON) _amazonMQBrokerLdapMetadataInterBrokerCreds
    , (Just . ("ServerMetadata",) . toJSON) _amazonMQBrokerLdapMetadataServerMetadata
    ]

-- | Constructor for 'AmazonMQBrokerLdapMetadata' containing required fields
-- as arguments.
amazonMQBrokerLdapMetadata
  :: AmazonMQBrokerServerMetadata -- ^ 'amqblmServerMetadata'
  -> AmazonMQBrokerLdapMetadata
amazonMQBrokerLdapMetadata serverMetadataarg =
  AmazonMQBrokerLdapMetadata
  { _amazonMQBrokerLdapMetadataInterBrokerCreds = Nothing
  , _amazonMQBrokerLdapMetadataServerMetadata = serverMetadataarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapmetadata.html#cfn-amazonmq-broker-ldapmetadata-interbrokercreds
amqblmInterBrokerCreds :: Lens' AmazonMQBrokerLdapMetadata (Maybe [AmazonMQBrokerInterBrokerCred])
amqblmInterBrokerCreds = lens _amazonMQBrokerLdapMetadataInterBrokerCreds (\s a -> s { _amazonMQBrokerLdapMetadataInterBrokerCreds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-broker-ldapmetadata.html#cfn-amazonmq-broker-ldapmetadata-servermetadata
amqblmServerMetadata :: Lens' AmazonMQBrokerLdapMetadata AmazonMQBrokerServerMetadata
amqblmServerMetadata = lens _amazonMQBrokerLdapMetadataServerMetadata (\s a -> s { _amazonMQBrokerLdapMetadataServerMetadata = a })
