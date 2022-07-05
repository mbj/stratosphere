{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html

module Stratosphere.Resources.OpsWorksStack where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.OpsWorksStackChefConfiguration
import Stratosphere.ResourceProperties.OpsWorksStackStackConfigurationManager
import Stratosphere.ResourceProperties.OpsWorksStackSource
import Stratosphere.ResourceProperties.OpsWorksStackElasticIp
import Stratosphere.ResourceProperties.OpsWorksStackRdsDbInstance
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for OpsWorksStack. See 'opsWorksStack' for a
-- more convenient constructor.
data OpsWorksStack =
  OpsWorksStack
  { _opsWorksStackAgentVersion :: Maybe (Val Text)
  , _opsWorksStackAttributes :: Maybe Object
  , _opsWorksStackChefConfiguration :: Maybe OpsWorksStackChefConfiguration
  , _opsWorksStackCloneAppIds :: Maybe (ValList Text)
  , _opsWorksStackClonePermissions :: Maybe (Val Bool)
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
  , _opsWorksStackTags :: Maybe [Tag]
  , _opsWorksStackUseCustomCookbooks :: Maybe (Val Bool)
  , _opsWorksStackUseOpsworksSecurityGroups :: Maybe (Val Bool)
  , _opsWorksStackVpcId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties OpsWorksStack where
  toResourceProperties OpsWorksStack{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::OpsWorks::Stack"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AgentVersion",) . toJSON) _opsWorksStackAgentVersion
        , fmap (("Attributes",) . toJSON) _opsWorksStackAttributes
        , fmap (("ChefConfiguration",) . toJSON) _opsWorksStackChefConfiguration
        , fmap (("CloneAppIds",) . toJSON) _opsWorksStackCloneAppIds
        , fmap (("ClonePermissions",) . toJSON) _opsWorksStackClonePermissions
        , fmap (("ConfigurationManager",) . toJSON) _opsWorksStackConfigurationManager
        , fmap (("CustomCookbooksSource",) . toJSON) _opsWorksStackCustomCookbooksSource
        , fmap (("CustomJson",) . toJSON) _opsWorksStackCustomJson
        , fmap (("DefaultAvailabilityZone",) . toJSON) _opsWorksStackDefaultAvailabilityZone
        , (Just . ("DefaultInstanceProfileArn",) . toJSON) _opsWorksStackDefaultInstanceProfileArn
        , fmap (("DefaultOs",) . toJSON) _opsWorksStackDefaultOs
        , fmap (("DefaultRootDeviceType",) . toJSON) _opsWorksStackDefaultRootDeviceType
        , fmap (("DefaultSshKeyName",) . toJSON) _opsWorksStackDefaultSshKeyName
        , fmap (("DefaultSubnetId",) . toJSON) _opsWorksStackDefaultSubnetId
        , fmap (("EcsClusterArn",) . toJSON) _opsWorksStackEcsClusterArn
        , fmap (("ElasticIps",) . toJSON) _opsWorksStackElasticIps
        , fmap (("HostnameTheme",) . toJSON) _opsWorksStackHostnameTheme
        , (Just . ("Name",) . toJSON) _opsWorksStackName
        , fmap (("RdsDbInstances",) . toJSON) _opsWorksStackRdsDbInstances
        , (Just . ("ServiceRoleArn",) . toJSON) _opsWorksStackServiceRoleArn
        , fmap (("SourceStackId",) . toJSON) _opsWorksStackSourceStackId
        , fmap (("Tags",) . toJSON) _opsWorksStackTags
        , fmap (("UseCustomCookbooks",) . toJSON) _opsWorksStackUseCustomCookbooks
        , fmap (("UseOpsworksSecurityGroups",) . toJSON) _opsWorksStackUseOpsworksSecurityGroups
        , fmap (("VpcId",) . toJSON) _opsWorksStackVpcId
        ]
    }

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
  , _opsWorksStackTags = Nothing
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
owsClonePermissions :: Lens' OpsWorksStack (Maybe (Val Bool))
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-tags
owsTags :: Lens' OpsWorksStack (Maybe [Tag])
owsTags = lens _opsWorksStackTags (\s a -> s { _opsWorksStackTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#usecustcookbooks
owsUseCustomCookbooks :: Lens' OpsWorksStack (Maybe (Val Bool))
owsUseCustomCookbooks = lens _opsWorksStackUseCustomCookbooks (\s a -> s { _opsWorksStackUseCustomCookbooks = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-useopsworkssecuritygroups
owsUseOpsworksSecurityGroups :: Lens' OpsWorksStack (Maybe (Val Bool))
owsUseOpsworksSecurityGroups = lens _opsWorksStackUseOpsworksSecurityGroups (\s a -> s { _opsWorksStackUseOpsworksSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-opsworks-stack.html#cfn-opsworks-stack-vpcid
owsVpcId :: Lens' OpsWorksStack (Maybe (Val Text))
owsVpcId = lens _opsWorksStackVpcId (\s a -> s { _opsWorksStackVpcId = a })
