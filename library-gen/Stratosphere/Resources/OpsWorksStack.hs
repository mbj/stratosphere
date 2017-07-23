{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html

module Stratosphere.Resources.OpsWorksStack where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.OpsWorksStackChefConfiguration
import Stratosphere.ResourceProperties.OpsWorksStackStackConfigurationManager
import Stratosphere.ResourceProperties.OpsWorksStackSource
import Stratosphere.ResourceProperties.OpsWorksStackElasticIp
import Stratosphere.ResourceProperties.OpsWorksStackRdsDbInstance

-- | Full data type definition for OpsWorksStack. See 'opsWorksStack' for a
-- more convenient constructor.
data OpsWorksStack =
  OpsWorksStack
  { _opsWorksStackAgentVersion :: Maybe (Val Text)
  , _opsWorksStackAttributes :: Maybe Object
  , _opsWorksStackChefConfiguration :: Maybe OpsWorksStackChefConfiguration
  , _opsWorksStackCloneAppIds :: Maybe (ValList Text)
  , _opsWorksStackClonePermissions :: Maybe (Val Bool')
  , _opsWorksStackConfigurationManager :: Maybe OpsWorksStackStackConfigurationManager
  , _opsWorksStackCustomCookbooksSource :: Maybe OpsWorksStackSource
  , _opsWorksStackCustomJson :: Maybe Object
  , _opsWorksStackDefaultAvailabilityZone :: Maybe (Val Text)
  , _opsWorksStackDefaultInstanceProfileArn :: Val Text
  , _opsWorksStackDefaultOs :: Maybe (Val Text)
  , _opsWorksStackDefaultRootDeviceType :: Maybe (Val Text)
  , _opsWorksStackDefaultSshKeyName :: Maybe (Val Text)
  , _opsWorksStackDefaultSubnetId :: Maybe (Val Text)
  , _opsWorksStackEcsClusterArn :: Maybe (Val Text)
  , _opsWorksStackElasticIps :: Maybe [OpsWorksStackElasticIp]
  , _opsWorksStackHostnameTheme :: Maybe (Val Text)
  , _opsWorksStackName :: Val Text
  , _opsWorksStackRdsDbInstances :: Maybe [OpsWorksStackRdsDbInstance]
  , _opsWorksStackServiceRoleArn :: Val Text
  , _opsWorksStackSourceStackId :: Maybe (Val Text)
  , _opsWorksStackUseCustomCookbooks :: Maybe (Val Bool')
  , _opsWorksStackUseOpsworksSecurityGroups :: Maybe (Val Bool')
  , _opsWorksStackVpcId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON OpsWorksStack where
  toJSON OpsWorksStack{..} =
    object $
    catMaybes
    [ ("AgentVersion" .=) <$> _opsWorksStackAgentVersion
    , ("Attributes" .=) <$> _opsWorksStackAttributes
    , ("ChefConfiguration" .=) <$> _opsWorksStackChefConfiguration
    , ("CloneAppIds" .=) <$> _opsWorksStackCloneAppIds
    , ("ClonePermissions" .=) <$> _opsWorksStackClonePermissions
    , ("ConfigurationManager" .=) <$> _opsWorksStackConfigurationManager
    , ("CustomCookbooksSource" .=) <$> _opsWorksStackCustomCookbooksSource
    , ("CustomJson" .=) <$> _opsWorksStackCustomJson
    , ("DefaultAvailabilityZone" .=) <$> _opsWorksStackDefaultAvailabilityZone
    , Just ("DefaultInstanceProfileArn" .= _opsWorksStackDefaultInstanceProfileArn)
    , ("DefaultOs" .=) <$> _opsWorksStackDefaultOs
    , ("DefaultRootDeviceType" .=) <$> _opsWorksStackDefaultRootDeviceType
    , ("DefaultSshKeyName" .=) <$> _opsWorksStackDefaultSshKeyName
    , ("DefaultSubnetId" .=) <$> _opsWorksStackDefaultSubnetId
    , ("EcsClusterArn" .=) <$> _opsWorksStackEcsClusterArn
    , ("ElasticIps" .=) <$> _opsWorksStackElasticIps
    , ("HostnameTheme" .=) <$> _opsWorksStackHostnameTheme
    , Just ("Name" .= _opsWorksStackName)
    , ("RdsDbInstances" .=) <$> _opsWorksStackRdsDbInstances
    , Just ("ServiceRoleArn" .= _opsWorksStackServiceRoleArn)
    , ("SourceStackId" .=) <$> _opsWorksStackSourceStackId
    , ("UseCustomCookbooks" .=) <$> _opsWorksStackUseCustomCookbooks
    , ("UseOpsworksSecurityGroups" .=) <$> _opsWorksStackUseOpsworksSecurityGroups
    , ("VpcId" .=) <$> _opsWorksStackVpcId
    ]

instance FromJSON OpsWorksStack where
  parseJSON (Object obj) =
    OpsWorksStack <$>
      obj .:? "AgentVersion" <*>
      obj .:? "Attributes" <*>
      obj .:? "ChefConfiguration" <*>
      obj .:? "CloneAppIds" <*>
      obj .:? "ClonePermissions" <*>
      obj .:? "ConfigurationManager" <*>
      obj .:? "CustomCookbooksSource" <*>
      obj .:? "CustomJson" <*>
      obj .:? "DefaultAvailabilityZone" <*>
      obj .: "DefaultInstanceProfileArn" <*>
      obj .:? "DefaultOs" <*>
      obj .:? "DefaultRootDeviceType" <*>
      obj .:? "DefaultSshKeyName" <*>
      obj .:? "DefaultSubnetId" <*>
      obj .:? "EcsClusterArn" <*>
      obj .:? "ElasticIps" <*>
      obj .:? "HostnameTheme" <*>
      obj .: "Name" <*>
      obj .:? "RdsDbInstances" <*>
      obj .: "ServiceRoleArn" <*>
      obj .:? "SourceStackId" <*>
      obj .:? "UseCustomCookbooks" <*>
      obj .:? "UseOpsworksSecurityGroups" <*>
      obj .:? "VpcId"
  parseJSON _ = mempty

-- | Constructor for 'OpsWorksStack' containing required fields as arguments.
opsWorksStack
  :: Val Text -- ^ 'owsDefaultInstanceProfileArn'
  -> Val Text -- ^ 'owsName'
  -> Val Text -- ^ 'owsServiceRoleArn'
  -> OpsWorksStack
opsWorksStack defaultInstanceProfileArnarg namearg serviceRoleArnarg =
  OpsWorksStack
  { _opsWorksStackAgentVersion = Nothing
  , _opsWorksStackAttributes = Nothing
  , _opsWorksStackChefConfiguration = Nothing
  , _opsWorksStackCloneAppIds = Nothing
  , _opsWorksStackClonePermissions = Nothing
  , _opsWorksStackConfigurationManager = Nothing
  , _opsWorksStackCustomCookbooksSource = Nothing
  , _opsWorksStackCustomJson = Nothing
  , _opsWorksStackDefaultAvailabilityZone = Nothing
  , _opsWorksStackDefaultInstanceProfileArn = defaultInstanceProfileArnarg
  , _opsWorksStackDefaultOs = Nothing
  , _opsWorksStackDefaultRootDeviceType = Nothing
  , _opsWorksStackDefaultSshKeyName = Nothing
  , _opsWorksStackDefaultSubnetId = Nothing
  , _opsWorksStackEcsClusterArn = Nothing
  , _opsWorksStackElasticIps = Nothing
  , _opsWorksStackHostnameTheme = Nothing
  , _opsWorksStackName = namearg
  , _opsWorksStackRdsDbInstances = Nothing
  , _opsWorksStackServiceRoleArn = serviceRoleArnarg
  , _opsWorksStackSourceStackId = Nothing
  , _opsWorksStackUseCustomCookbooks = Nothing
  , _opsWorksStackUseOpsworksSecurityGroups = Nothing
  , _opsWorksStackVpcId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-agentversion
owsAgentVersion :: Lens' OpsWorksStack (Maybe (Val Text))
owsAgentVersion = lens _opsWorksStackAgentVersion (\s a -> s { _opsWorksStackAgentVersion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-attributes
owsAttributes :: Lens' OpsWorksStack (Maybe Object)
owsAttributes = lens _opsWorksStackAttributes (\s a -> s { _opsWorksStackAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-chefconfiguration
owsChefConfiguration :: Lens' OpsWorksStack (Maybe OpsWorksStackChefConfiguration)
owsChefConfiguration = lens _opsWorksStackChefConfiguration (\s a -> s { _opsWorksStackChefConfiguration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-cloneappids
owsCloneAppIds :: Lens' OpsWorksStack (Maybe (ValList Text))
owsCloneAppIds = lens _opsWorksStackCloneAppIds (\s a -> s { _opsWorksStackCloneAppIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-clonepermissions
owsClonePermissions :: Lens' OpsWorksStack (Maybe (Val Bool'))
owsClonePermissions = lens _opsWorksStackClonePermissions (\s a -> s { _opsWorksStackClonePermissions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-configmanager
owsConfigurationManager :: Lens' OpsWorksStack (Maybe OpsWorksStackStackConfigurationManager)
owsConfigurationManager = lens _opsWorksStackConfigurationManager (\s a -> s { _opsWorksStackConfigurationManager = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-custcookbooksource
owsCustomCookbooksSource :: Lens' OpsWorksStack (Maybe OpsWorksStackSource)
owsCustomCookbooksSource = lens _opsWorksStackCustomCookbooksSource (\s a -> s { _opsWorksStackCustomCookbooksSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-custjson
owsCustomJson :: Lens' OpsWorksStack (Maybe Object)
owsCustomJson = lens _opsWorksStackCustomJson (\s a -> s { _opsWorksStackCustomJson = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultaz
owsDefaultAvailabilityZone :: Lens' OpsWorksStack (Maybe (Val Text))
owsDefaultAvailabilityZone = lens _opsWorksStackDefaultAvailabilityZone (\s a -> s { _opsWorksStackDefaultAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultinstanceprof
owsDefaultInstanceProfileArn :: Lens' OpsWorksStack (Val Text)
owsDefaultInstanceProfileArn = lens _opsWorksStackDefaultInstanceProfileArn (\s a -> s { _opsWorksStackDefaultInstanceProfileArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultos
owsDefaultOs :: Lens' OpsWorksStack (Maybe (Val Text))
owsDefaultOs = lens _opsWorksStackDefaultOs (\s a -> s { _opsWorksStackDefaultOs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultrootdevicetype
owsDefaultRootDeviceType :: Lens' OpsWorksStack (Maybe (Val Text))
owsDefaultRootDeviceType = lens _opsWorksStackDefaultRootDeviceType (\s a -> s { _opsWorksStackDefaultRootDeviceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-defaultsshkeyname
owsDefaultSshKeyName :: Lens' OpsWorksStack (Maybe (Val Text))
owsDefaultSshKeyName = lens _opsWorksStackDefaultSshKeyName (\s a -> s { _opsWorksStackDefaultSshKeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#defaultsubnet
owsDefaultSubnetId :: Lens' OpsWorksStack (Maybe (Val Text))
owsDefaultSubnetId = lens _opsWorksStackDefaultSubnetId (\s a -> s { _opsWorksStackDefaultSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-ecsclusterarn
owsEcsClusterArn :: Lens' OpsWorksStack (Maybe (Val Text))
owsEcsClusterArn = lens _opsWorksStackEcsClusterArn (\s a -> s { _opsWorksStackEcsClusterArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-elasticips
owsElasticIps :: Lens' OpsWorksStack (Maybe [OpsWorksStackElasticIp])
owsElasticIps = lens _opsWorksStackElasticIps (\s a -> s { _opsWorksStackElasticIps = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-hostnametheme
owsHostnameTheme :: Lens' OpsWorksStack (Maybe (Val Text))
owsHostnameTheme = lens _opsWorksStackHostnameTheme (\s a -> s { _opsWorksStackHostnameTheme = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-name
owsName :: Lens' OpsWorksStack (Val Text)
owsName = lens _opsWorksStackName (\s a -> s { _opsWorksStackName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-rdsdbinstances
owsRdsDbInstances :: Lens' OpsWorksStack (Maybe [OpsWorksStackRdsDbInstance])
owsRdsDbInstances = lens _opsWorksStackRdsDbInstances (\s a -> s { _opsWorksStackRdsDbInstances = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-servicerolearn
owsServiceRoleArn :: Lens' OpsWorksStack (Val Text)
owsServiceRoleArn = lens _opsWorksStackServiceRoleArn (\s a -> s { _opsWorksStackServiceRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-sourcestackid
owsSourceStackId :: Lens' OpsWorksStack (Maybe (Val Text))
owsSourceStackId = lens _opsWorksStackSourceStackId (\s a -> s { _opsWorksStackSourceStackId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#usecustcookbooks
owsUseCustomCookbooks :: Lens' OpsWorksStack (Maybe (Val Bool'))
owsUseCustomCookbooks = lens _opsWorksStackUseCustomCookbooks (\s a -> s { _opsWorksStackUseCustomCookbooks = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-useopsworkssecuritygroups
owsUseOpsworksSecurityGroups :: Lens' OpsWorksStack (Maybe (Val Bool'))
owsUseOpsworksSecurityGroups = lens _opsWorksStackUseOpsworksSecurityGroups (\s a -> s { _opsWorksStackUseOpsworksSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-vpcid
owsVpcId :: Lens' OpsWorksStack (Maybe (Val Text))
owsVpcId = lens _opsWorksStackVpcId (\s a -> s { _opsWorksStackVpcId = a })
