{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html

module Stratosphere.Resources.AmazonMQConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AmazonMQConfigurationTagsEntry

-- | Full data type definition for AmazonMQConfiguration. See
-- 'amazonMQConfiguration' for a more convenient constructor.
data AmazonMQConfiguration =
  AmazonMQConfiguration
  { _amazonMQConfigurationData :: Val Text
  , _amazonMQConfigurationDescription :: Maybe (Val Text)
  , _amazonMQConfigurationEngineType :: Val Text
  , _amazonMQConfigurationEngineVersion :: Val Text
  , _amazonMQConfigurationName :: Val Text
  , _amazonMQConfigurationTags :: Maybe [AmazonMQConfigurationTagsEntry]
  } deriving (Show, Eq)

instance ToResourceProperties AmazonMQConfiguration where
  toResourceProperties AmazonMQConfiguration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AmazonMQ::Configuration"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Data",) . toJSON) _amazonMQConfigurationData
        , fmap (("Description",) . toJSON) _amazonMQConfigurationDescription
        , (Just . ("EngineType",) . toJSON) _amazonMQConfigurationEngineType
        , (Just . ("EngineVersion",) . toJSON) _amazonMQConfigurationEngineVersion
        , (Just . ("Name",) . toJSON) _amazonMQConfigurationName
        , fmap (("Tags",) . toJSON) _amazonMQConfigurationTags
        ]
    }

-- | Constructor for 'AmazonMQConfiguration' containing required fields as
-- arguments.
amazonMQConfiguration
  :: Val Text -- ^ 'amqcData'
  -> Val Text -- ^ 'amqcEngineType'
  -> Val Text -- ^ 'amqcEngineVersion'
  -> Val Text -- ^ 'amqcName'
  -> AmazonMQConfiguration
amazonMQConfiguration dataarg engineTypearg engineVersionarg namearg =
  AmazonMQConfiguration
  { _amazonMQConfigurationData = dataarg
  , _amazonMQConfigurationDescription = Nothing
  , _amazonMQConfigurationEngineType = engineTypearg
  , _amazonMQConfigurationEngineVersion = engineVersionarg
  , _amazonMQConfigurationName = namearg
  , _amazonMQConfigurationTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-data
amqcData :: Lens' AmazonMQConfiguration (Val Text)
amqcData = lens _amazonMQConfigurationData (\s a -> s { _amazonMQConfigurationData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-description
amqcDescription :: Lens' AmazonMQConfiguration (Maybe (Val Text))
amqcDescription = lens _amazonMQConfigurationDescription (\s a -> s { _amazonMQConfigurationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-enginetype
amqcEngineType :: Lens' AmazonMQConfiguration (Val Text)
amqcEngineType = lens _amazonMQConfigurationEngineType (\s a -> s { _amazonMQConfigurationEngineType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-engineversion
amqcEngineVersion :: Lens' AmazonMQConfiguration (Val Text)
amqcEngineVersion = lens _amazonMQConfigurationEngineVersion (\s a -> s { _amazonMQConfigurationEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-name
amqcName :: Lens' AmazonMQConfiguration (Val Text)
amqcName = lens _amazonMQConfigurationName (\s a -> s { _amazonMQConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-configuration.html#cfn-amazonmq-configuration-tags
amqcTags :: Lens' AmazonMQConfiguration (Maybe [AmazonMQConfigurationTagsEntry])
amqcTags = lens _amazonMQConfigurationTags (\s a -> s { _amazonMQConfigurationTags = a })
