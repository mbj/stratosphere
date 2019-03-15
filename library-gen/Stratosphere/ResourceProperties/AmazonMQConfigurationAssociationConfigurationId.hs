{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html

module Stratosphere.ResourceProperties.AmazonMQConfigurationAssociationConfigurationId where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- AmazonMQConfigurationAssociationConfigurationId. See
-- 'amazonMQConfigurationAssociationConfigurationId' for a more convenient
-- constructor.
data AmazonMQConfigurationAssociationConfigurationId =
  AmazonMQConfigurationAssociationConfigurationId
  { _amazonMQConfigurationAssociationConfigurationIdId :: Val Text
  , _amazonMQConfigurationAssociationConfigurationIdRevision :: Val Integer
  } deriving (Show, Eq)

instance ToJSON AmazonMQConfigurationAssociationConfigurationId where
  toJSON AmazonMQConfigurationAssociationConfigurationId{..} =
    object $
    catMaybes
    [ (Just . ("Id",) . toJSON) _amazonMQConfigurationAssociationConfigurationIdId
    , (Just . ("Revision",) . toJSON) _amazonMQConfigurationAssociationConfigurationIdRevision
    ]

-- | Constructor for 'AmazonMQConfigurationAssociationConfigurationId'
-- containing required fields as arguments.
amazonMQConfigurationAssociationConfigurationId
  :: Val Text -- ^ 'amqcaciId'
  -> Val Integer -- ^ 'amqcaciRevision'
  -> AmazonMQConfigurationAssociationConfigurationId
amazonMQConfigurationAssociationConfigurationId idarg revisionarg =
  AmazonMQConfigurationAssociationConfigurationId
  { _amazonMQConfigurationAssociationConfigurationIdId = idarg
  , _amazonMQConfigurationAssociationConfigurationIdRevision = revisionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html#cfn-amazonmq-configurationassociation-configurationid-id
amqcaciId :: Lens' AmazonMQConfigurationAssociationConfigurationId (Val Text)
amqcaciId = lens _amazonMQConfigurationAssociationConfigurationIdId (\s a -> s { _amazonMQConfigurationAssociationConfigurationIdId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-amazonmq-configurationassociation-configurationid.html#cfn-amazonmq-configurationassociation-configurationid-revision
amqcaciRevision :: Lens' AmazonMQConfigurationAssociationConfigurationId (Val Integer)
amqcaciRevision = lens _amazonMQConfigurationAssociationConfigurationIdRevision (\s a -> s { _amazonMQConfigurationAssociationConfigurationIdRevision = a })
