{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html

module Stratosphere.Resources.AmazonMQConfigurationAssociation where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AmazonMQConfigurationAssociationConfigurationId

-- | Full data type definition for AmazonMQConfigurationAssociation. See
-- 'amazonMQConfigurationAssociation' for a more convenient constructor.
data AmazonMQConfigurationAssociation =
  AmazonMQConfigurationAssociation
  { _amazonMQConfigurationAssociationBroker :: Val Text
  , _amazonMQConfigurationAssociationConfiguration :: AmazonMQConfigurationAssociationConfigurationId
  } deriving (Show, Eq)

instance ToResourceProperties AmazonMQConfigurationAssociation where
  toResourceProperties AmazonMQConfigurationAssociation{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AmazonMQ::ConfigurationAssociation"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Broker",) . toJSON) _amazonMQConfigurationAssociationBroker
        , (Just . ("Configuration",) . toJSON) _amazonMQConfigurationAssociationConfiguration
        ]
    }

-- | Constructor for 'AmazonMQConfigurationAssociation' containing required
-- fields as arguments.
amazonMQConfigurationAssociation
  :: Val Text -- ^ 'amqcaBroker'
  -> AmazonMQConfigurationAssociationConfigurationId -- ^ 'amqcaConfiguration'
  -> AmazonMQConfigurationAssociation
amazonMQConfigurationAssociation brokerarg configurationarg =
  AmazonMQConfigurationAssociation
  { _amazonMQConfigurationAssociationBroker = brokerarg
  , _amazonMQConfigurationAssociationConfiguration = configurationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html#cfn-amazonmq-configurationassociation-broker
amqcaBroker :: Lens' AmazonMQConfigurationAssociation (Val Text)
amqcaBroker = lens _amazonMQConfigurationAssociationBroker (\s a -> s { _amazonMQConfigurationAssociationBroker = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configurationassociation.html#cfn-amazonmq-configurationassociation-configuration
amqcaConfiguration :: Lens' AmazonMQConfigurationAssociation AmazonMQConfigurationAssociationConfigurationId
amqcaConfiguration = lens _amazonMQConfigurationAssociationConfiguration (\s a -> s { _amazonMQConfigurationAssociationConfiguration = a })
