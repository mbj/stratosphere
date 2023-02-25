module Stratosphere.OpsWorks.Stack (
        module Exports, Stack(..), mkStack
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpsWorks.Stack.ChefConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.Stack.ElasticIpProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.Stack.RdsDbInstanceProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.Stack.SourceProperty as Exports
import {-# SOURCE #-} Stratosphere.OpsWorks.Stack.StackConfigurationManagerProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Stack
  = Stack {agentVersion :: (Prelude.Maybe (Value Prelude.Text)),
           attributes :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
           chefConfiguration :: (Prelude.Maybe ChefConfigurationProperty),
           cloneAppIds :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
           clonePermissions :: (Prelude.Maybe (Value Prelude.Bool)),
           configurationManager :: (Prelude.Maybe StackConfigurationManagerProperty),
           customCookbooksSource :: (Prelude.Maybe SourceProperty),
           customJson :: (Prelude.Maybe JSON.Object),
           defaultAvailabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
           defaultInstanceProfileArn :: (Value Prelude.Text),
           defaultOs :: (Prelude.Maybe (Value Prelude.Text)),
           defaultRootDeviceType :: (Prelude.Maybe (Value Prelude.Text)),
           defaultSshKeyName :: (Prelude.Maybe (Value Prelude.Text)),
           defaultSubnetId :: (Prelude.Maybe (Value Prelude.Text)),
           ecsClusterArn :: (Prelude.Maybe (Value Prelude.Text)),
           elasticIps :: (Prelude.Maybe [ElasticIpProperty]),
           hostnameTheme :: (Prelude.Maybe (Value Prelude.Text)),
           name :: (Value Prelude.Text),
           rdsDbInstances :: (Prelude.Maybe [RdsDbInstanceProperty]),
           serviceRoleArn :: (Value Prelude.Text),
           sourceStackId :: (Prelude.Maybe (Value Prelude.Text)),
           tags :: (Prelude.Maybe [Tag]),
           useCustomCookbooks :: (Prelude.Maybe (Value Prelude.Bool)),
           useOpsworksSecurityGroups :: (Prelude.Maybe (Value Prelude.Bool)),
           vpcId :: (Prelude.Maybe (Value Prelude.Text))}
mkStack ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Stack
mkStack defaultInstanceProfileArn name serviceRoleArn
  = Stack
      {defaultInstanceProfileArn = defaultInstanceProfileArn,
       name = name, serviceRoleArn = serviceRoleArn,
       agentVersion = Prelude.Nothing, attributes = Prelude.Nothing,
       chefConfiguration = Prelude.Nothing, cloneAppIds = Prelude.Nothing,
       clonePermissions = Prelude.Nothing,
       configurationManager = Prelude.Nothing,
       customCookbooksSource = Prelude.Nothing,
       customJson = Prelude.Nothing,
       defaultAvailabilityZone = Prelude.Nothing,
       defaultOs = Prelude.Nothing,
       defaultRootDeviceType = Prelude.Nothing,
       defaultSshKeyName = Prelude.Nothing,
       defaultSubnetId = Prelude.Nothing, ecsClusterArn = Prelude.Nothing,
       elasticIps = Prelude.Nothing, hostnameTheme = Prelude.Nothing,
       rdsDbInstances = Prelude.Nothing, sourceStackId = Prelude.Nothing,
       tags = Prelude.Nothing, useCustomCookbooks = Prelude.Nothing,
       useOpsworksSecurityGroups = Prelude.Nothing,
       vpcId = Prelude.Nothing}
instance ToResourceProperties Stack where
  toResourceProperties Stack {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Stack",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultInstanceProfileArn" JSON..= defaultInstanceProfileArn,
                            "Name" JSON..= name, "ServiceRoleArn" JSON..= serviceRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AgentVersion" Prelude.<$> agentVersion,
                               (JSON..=) "Attributes" Prelude.<$> attributes,
                               (JSON..=) "ChefConfiguration" Prelude.<$> chefConfiguration,
                               (JSON..=) "CloneAppIds" Prelude.<$> cloneAppIds,
                               (JSON..=) "ClonePermissions" Prelude.<$> clonePermissions,
                               (JSON..=) "ConfigurationManager" Prelude.<$> configurationManager,
                               (JSON..=) "CustomCookbooksSource"
                                 Prelude.<$> customCookbooksSource,
                               (JSON..=) "CustomJson" Prelude.<$> customJson,
                               (JSON..=) "DefaultAvailabilityZone"
                                 Prelude.<$> defaultAvailabilityZone,
                               (JSON..=) "DefaultOs" Prelude.<$> defaultOs,
                               (JSON..=) "DefaultRootDeviceType"
                                 Prelude.<$> defaultRootDeviceType,
                               (JSON..=) "DefaultSshKeyName" Prelude.<$> defaultSshKeyName,
                               (JSON..=) "DefaultSubnetId" Prelude.<$> defaultSubnetId,
                               (JSON..=) "EcsClusterArn" Prelude.<$> ecsClusterArn,
                               (JSON..=) "ElasticIps" Prelude.<$> elasticIps,
                               (JSON..=) "HostnameTheme" Prelude.<$> hostnameTheme,
                               (JSON..=) "RdsDbInstances" Prelude.<$> rdsDbInstances,
                               (JSON..=) "SourceStackId" Prelude.<$> sourceStackId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UseCustomCookbooks" Prelude.<$> useCustomCookbooks,
                               (JSON..=) "UseOpsworksSecurityGroups"
                                 Prelude.<$> useOpsworksSecurityGroups,
                               (JSON..=) "VpcId" Prelude.<$> vpcId]))}
instance JSON.ToJSON Stack where
  toJSON Stack {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultInstanceProfileArn" JSON..= defaultInstanceProfileArn,
               "Name" JSON..= name, "ServiceRoleArn" JSON..= serviceRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AgentVersion" Prelude.<$> agentVersion,
                  (JSON..=) "Attributes" Prelude.<$> attributes,
                  (JSON..=) "ChefConfiguration" Prelude.<$> chefConfiguration,
                  (JSON..=) "CloneAppIds" Prelude.<$> cloneAppIds,
                  (JSON..=) "ClonePermissions" Prelude.<$> clonePermissions,
                  (JSON..=) "ConfigurationManager" Prelude.<$> configurationManager,
                  (JSON..=) "CustomCookbooksSource"
                    Prelude.<$> customCookbooksSource,
                  (JSON..=) "CustomJson" Prelude.<$> customJson,
                  (JSON..=) "DefaultAvailabilityZone"
                    Prelude.<$> defaultAvailabilityZone,
                  (JSON..=) "DefaultOs" Prelude.<$> defaultOs,
                  (JSON..=) "DefaultRootDeviceType"
                    Prelude.<$> defaultRootDeviceType,
                  (JSON..=) "DefaultSshKeyName" Prelude.<$> defaultSshKeyName,
                  (JSON..=) "DefaultSubnetId" Prelude.<$> defaultSubnetId,
                  (JSON..=) "EcsClusterArn" Prelude.<$> ecsClusterArn,
                  (JSON..=) "ElasticIps" Prelude.<$> elasticIps,
                  (JSON..=) "HostnameTheme" Prelude.<$> hostnameTheme,
                  (JSON..=) "RdsDbInstances" Prelude.<$> rdsDbInstances,
                  (JSON..=) "SourceStackId" Prelude.<$> sourceStackId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UseCustomCookbooks" Prelude.<$> useCustomCookbooks,
                  (JSON..=) "UseOpsworksSecurityGroups"
                    Prelude.<$> useOpsworksSecurityGroups,
                  (JSON..=) "VpcId" Prelude.<$> vpcId])))
instance Property "AgentVersion" Stack where
  type PropertyType "AgentVersion" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {agentVersion = Prelude.pure newValue, ..}
instance Property "Attributes" Stack where
  type PropertyType "Attributes" Stack = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Stack {..}
    = Stack {attributes = Prelude.pure newValue, ..}
instance Property "ChefConfiguration" Stack where
  type PropertyType "ChefConfiguration" Stack = ChefConfigurationProperty
  set newValue Stack {..}
    = Stack {chefConfiguration = Prelude.pure newValue, ..}
instance Property "CloneAppIds" Stack where
  type PropertyType "CloneAppIds" Stack = ValueList (Value Prelude.Text)
  set newValue Stack {..}
    = Stack {cloneAppIds = Prelude.pure newValue, ..}
instance Property "ClonePermissions" Stack where
  type PropertyType "ClonePermissions" Stack = Value Prelude.Bool
  set newValue Stack {..}
    = Stack {clonePermissions = Prelude.pure newValue, ..}
instance Property "ConfigurationManager" Stack where
  type PropertyType "ConfigurationManager" Stack = StackConfigurationManagerProperty
  set newValue Stack {..}
    = Stack {configurationManager = Prelude.pure newValue, ..}
instance Property "CustomCookbooksSource" Stack where
  type PropertyType "CustomCookbooksSource" Stack = SourceProperty
  set newValue Stack {..}
    = Stack {customCookbooksSource = Prelude.pure newValue, ..}
instance Property "CustomJson" Stack where
  type PropertyType "CustomJson" Stack = JSON.Object
  set newValue Stack {..}
    = Stack {customJson = Prelude.pure newValue, ..}
instance Property "DefaultAvailabilityZone" Stack where
  type PropertyType "DefaultAvailabilityZone" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {defaultAvailabilityZone = Prelude.pure newValue, ..}
instance Property "DefaultInstanceProfileArn" Stack where
  type PropertyType "DefaultInstanceProfileArn" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {defaultInstanceProfileArn = newValue, ..}
instance Property "DefaultOs" Stack where
  type PropertyType "DefaultOs" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {defaultOs = Prelude.pure newValue, ..}
instance Property "DefaultRootDeviceType" Stack where
  type PropertyType "DefaultRootDeviceType" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {defaultRootDeviceType = Prelude.pure newValue, ..}
instance Property "DefaultSshKeyName" Stack where
  type PropertyType "DefaultSshKeyName" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {defaultSshKeyName = Prelude.pure newValue, ..}
instance Property "DefaultSubnetId" Stack where
  type PropertyType "DefaultSubnetId" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {defaultSubnetId = Prelude.pure newValue, ..}
instance Property "EcsClusterArn" Stack where
  type PropertyType "EcsClusterArn" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {ecsClusterArn = Prelude.pure newValue, ..}
instance Property "ElasticIps" Stack where
  type PropertyType "ElasticIps" Stack = [ElasticIpProperty]
  set newValue Stack {..}
    = Stack {elasticIps = Prelude.pure newValue, ..}
instance Property "HostnameTheme" Stack where
  type PropertyType "HostnameTheme" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {hostnameTheme = Prelude.pure newValue, ..}
instance Property "Name" Stack where
  type PropertyType "Name" Stack = Value Prelude.Text
  set newValue Stack {..} = Stack {name = newValue, ..}
instance Property "RdsDbInstances" Stack where
  type PropertyType "RdsDbInstances" Stack = [RdsDbInstanceProperty]
  set newValue Stack {..}
    = Stack {rdsDbInstances = Prelude.pure newValue, ..}
instance Property "ServiceRoleArn" Stack where
  type PropertyType "ServiceRoleArn" Stack = Value Prelude.Text
  set newValue Stack {..} = Stack {serviceRoleArn = newValue, ..}
instance Property "SourceStackId" Stack where
  type PropertyType "SourceStackId" Stack = Value Prelude.Text
  set newValue Stack {..}
    = Stack {sourceStackId = Prelude.pure newValue, ..}
instance Property "Tags" Stack where
  type PropertyType "Tags" Stack = [Tag]
  set newValue Stack {..} = Stack {tags = Prelude.pure newValue, ..}
instance Property "UseCustomCookbooks" Stack where
  type PropertyType "UseCustomCookbooks" Stack = Value Prelude.Bool
  set newValue Stack {..}
    = Stack {useCustomCookbooks = Prelude.pure newValue, ..}
instance Property "UseOpsworksSecurityGroups" Stack where
  type PropertyType "UseOpsworksSecurityGroups" Stack = Value Prelude.Bool
  set newValue Stack {..}
    = Stack {useOpsworksSecurityGroups = Prelude.pure newValue, ..}
instance Property "VpcId" Stack where
  type PropertyType "VpcId" Stack = Value Prelude.Text
  set newValue Stack {..} = Stack {vpcId = Prelude.pure newValue, ..}