{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html

module Stratosphere.Resources.AmazonMQBroker where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AmazonMQBrokerConfigurationId
import Stratosphere.ResourceProperties.AmazonMQBrokerLogList
import Stratosphere.ResourceProperties.AmazonMQBrokerMaintenanceWindow
import Stratosphere.ResourceProperties.AmazonMQBrokerTagsEntry
import Stratosphere.ResourceProperties.AmazonMQBrokerUser

-- | Full data type definition for AmazonMQBroker. See 'amazonMQBroker' for a
-- more convenient constructor.
data AmazonMQBroker =
  AmazonMQBroker
  { _amazonMQBrokerAutoMinorVersionUpgrade :: Val Bool
  , _amazonMQBrokerBrokerName :: Val Text
  , _amazonMQBrokerConfiguration :: Maybe AmazonMQBrokerConfigurationId
  , _amazonMQBrokerDeploymentMode :: Val Text
  , _amazonMQBrokerEngineType :: Val Text
  , _amazonMQBrokerEngineVersion :: Val Text
  , _amazonMQBrokerHostInstanceType :: Val Text
  , _amazonMQBrokerLogs :: Maybe AmazonMQBrokerLogList
  , _amazonMQBrokerMaintenanceWindowStartTime :: Maybe AmazonMQBrokerMaintenanceWindow
  , _amazonMQBrokerPubliclyAccessible :: Val Bool
  , _amazonMQBrokerSecurityGroups :: Maybe (ValList Text)
  , _amazonMQBrokerSubnetIds :: Maybe (ValList Text)
  , _amazonMQBrokerTags :: Maybe [AmazonMQBrokerTagsEntry]
  , _amazonMQBrokerUsers :: [AmazonMQBrokerUser]
  } deriving (Show, Eq)

instance ToJSON AmazonMQBroker where
  toJSON AmazonMQBroker{..} =
    object $
    catMaybes
    [ (Just . ("AutoMinorVersionUpgrade",) . toJSON . fmap Bool') _amazonMQBrokerAutoMinorVersionUpgrade
    , (Just . ("BrokerName",) . toJSON) _amazonMQBrokerBrokerName
    , fmap (("Configuration",) . toJSON) _amazonMQBrokerConfiguration
    , (Just . ("DeploymentMode",) . toJSON) _amazonMQBrokerDeploymentMode
    , (Just . ("EngineType",) . toJSON) _amazonMQBrokerEngineType
    , (Just . ("EngineVersion",) . toJSON) _amazonMQBrokerEngineVersion
    , (Just . ("HostInstanceType",) . toJSON) _amazonMQBrokerHostInstanceType
    , fmap (("Logs",) . toJSON) _amazonMQBrokerLogs
    , fmap (("MaintenanceWindowStartTime",) . toJSON) _amazonMQBrokerMaintenanceWindowStartTime
    , (Just . ("PubliclyAccessible",) . toJSON . fmap Bool') _amazonMQBrokerPubliclyAccessible
    , fmap (("SecurityGroups",) . toJSON) _amazonMQBrokerSecurityGroups
    , fmap (("SubnetIds",) . toJSON) _amazonMQBrokerSubnetIds
    , fmap (("Tags",) . toJSON) _amazonMQBrokerTags
    , (Just . ("Users",) . toJSON) _amazonMQBrokerUsers
    ]

-- | Constructor for 'AmazonMQBroker' containing required fields as arguments.
amazonMQBroker
  :: Val Bool -- ^ 'amqbAutoMinorVersionUpgrade'
  -> Val Text -- ^ 'amqbBrokerName'
  -> Val Text -- ^ 'amqbDeploymentMode'
  -> Val Text -- ^ 'amqbEngineType'
  -> Val Text -- ^ 'amqbEngineVersion'
  -> Val Text -- ^ 'amqbHostInstanceType'
  -> Val Bool -- ^ 'amqbPubliclyAccessible'
  -> [AmazonMQBrokerUser] -- ^ 'amqbUsers'
  -> AmazonMQBroker
amazonMQBroker autoMinorVersionUpgradearg brokerNamearg deploymentModearg engineTypearg engineVersionarg hostInstanceTypearg publiclyAccessiblearg usersarg =
  AmazonMQBroker
  { _amazonMQBrokerAutoMinorVersionUpgrade = autoMinorVersionUpgradearg
  , _amazonMQBrokerBrokerName = brokerNamearg
  , _amazonMQBrokerConfiguration = Nothing
  , _amazonMQBrokerDeploymentMode = deploymentModearg
  , _amazonMQBrokerEngineType = engineTypearg
  , _amazonMQBrokerEngineVersion = engineVersionarg
  , _amazonMQBrokerHostInstanceType = hostInstanceTypearg
  , _amazonMQBrokerLogs = Nothing
  , _amazonMQBrokerMaintenanceWindowStartTime = Nothing
  , _amazonMQBrokerPubliclyAccessible = publiclyAccessiblearg
  , _amazonMQBrokerSecurityGroups = Nothing
  , _amazonMQBrokerSubnetIds = Nothing
  , _amazonMQBrokerTags = Nothing
  , _amazonMQBrokerUsers = usersarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-autominorversionupgrade
amqbAutoMinorVersionUpgrade :: Lens' AmazonMQBroker (Val Bool)
amqbAutoMinorVersionUpgrade = lens _amazonMQBrokerAutoMinorVersionUpgrade (\s a -> s { _amazonMQBrokerAutoMinorVersionUpgrade = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-brokername
amqbBrokerName :: Lens' AmazonMQBroker (Val Text)
amqbBrokerName = lens _amazonMQBrokerBrokerName (\s a -> s { _amazonMQBrokerBrokerName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-configuration
amqbConfiguration :: Lens' AmazonMQBroker (Maybe AmazonMQBrokerConfigurationId)
amqbConfiguration = lens _amazonMQBrokerConfiguration (\s a -> s { _amazonMQBrokerConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-deploymentmode
amqbDeploymentMode :: Lens' AmazonMQBroker (Val Text)
amqbDeploymentMode = lens _amazonMQBrokerDeploymentMode (\s a -> s { _amazonMQBrokerDeploymentMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-enginetype
amqbEngineType :: Lens' AmazonMQBroker (Val Text)
amqbEngineType = lens _amazonMQBrokerEngineType (\s a -> s { _amazonMQBrokerEngineType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-engineversion
amqbEngineVersion :: Lens' AmazonMQBroker (Val Text)
amqbEngineVersion = lens _amazonMQBrokerEngineVersion (\s a -> s { _amazonMQBrokerEngineVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-hostinstancetype
amqbHostInstanceType :: Lens' AmazonMQBroker (Val Text)
amqbHostInstanceType = lens _amazonMQBrokerHostInstanceType (\s a -> s { _amazonMQBrokerHostInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-logs
amqbLogs :: Lens' AmazonMQBroker (Maybe AmazonMQBrokerLogList)
amqbLogs = lens _amazonMQBrokerLogs (\s a -> s { _amazonMQBrokerLogs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-maintenancewindowstarttime
amqbMaintenanceWindowStartTime :: Lens' AmazonMQBroker (Maybe AmazonMQBrokerMaintenanceWindow)
amqbMaintenanceWindowStartTime = lens _amazonMQBrokerMaintenanceWindowStartTime (\s a -> s { _amazonMQBrokerMaintenanceWindowStartTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-publiclyaccessible
amqbPubliclyAccessible :: Lens' AmazonMQBroker (Val Bool)
amqbPubliclyAccessible = lens _amazonMQBrokerPubliclyAccessible (\s a -> s { _amazonMQBrokerPubliclyAccessible = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-securitygroups
amqbSecurityGroups :: Lens' AmazonMQBroker (Maybe (ValList Text))
amqbSecurityGroups = lens _amazonMQBrokerSecurityGroups (\s a -> s { _amazonMQBrokerSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-subnetids
amqbSubnetIds :: Lens' AmazonMQBroker (Maybe (ValList Text))
amqbSubnetIds = lens _amazonMQBrokerSubnetIds (\s a -> s { _amazonMQBrokerSubnetIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-tags
amqbTags :: Lens' AmazonMQBroker (Maybe [AmazonMQBrokerTagsEntry])
amqbTags = lens _amazonMQBrokerTags (\s a -> s { _amazonMQBrokerTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-amazonmq-broker.html#cfn-amazonmq-broker-users
amqbUsers :: Lens' AmazonMQBroker [AmazonMQBrokerUser]
amqbUsers = lens _amazonMQBrokerUsers (\s a -> s { _amazonMQBrokerUsers = a })
