module Stratosphere.M2.Environment (
        module Exports, Environment(..), mkEnvironment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.M2.Environment.HighAvailabilityConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.M2.Environment.StorageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Environment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html>
    Environment {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-enginetype>
                 engineType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-engineversion>
                 engineVersion :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-highavailabilityconfig>
                 highAvailabilityConfig :: (Prelude.Maybe HighAvailabilityConfigProperty),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-instancetype>
                 instanceType :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-kmskeyid>
                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-name>
                 name :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-preferredmaintenancewindow>
                 preferredMaintenanceWindow :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-publiclyaccessible>
                 publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-securitygroupids>
                 securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-storageconfigurations>
                 storageConfigurations :: (Prelude.Maybe [StorageConfigurationProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-subnetids>
                 subnetIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-m2-environment.html#cfn-m2-environment-tags>
                 tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEnvironment ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Environment
mkEnvironment engineType instanceType name
  = Environment
      {haddock_workaround_ = (), engineType = engineType,
       instanceType = instanceType, name = name,
       description = Prelude.Nothing, engineVersion = Prelude.Nothing,
       highAvailabilityConfig = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing,
       preferredMaintenanceWindow = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing,
       securityGroupIds = Prelude.Nothing,
       storageConfigurations = Prelude.Nothing,
       subnetIds = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Environment where
  toResourceProperties Environment {..}
    = ResourceProperties
        {awsType = "AWS::M2::Environment", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EngineType" JSON..= engineType,
                            "InstanceType" JSON..= instanceType, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                               (JSON..=) "HighAvailabilityConfig"
                                 Prelude.<$> highAvailabilityConfig,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "PreferredMaintenanceWindow"
                                 Prelude.<$> preferredMaintenanceWindow,
                               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                               (JSON..=) "StorageConfigurations"
                                 Prelude.<$> storageConfigurations,
                               (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Environment where
  toJSON Environment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EngineType" JSON..= engineType,
               "InstanceType" JSON..= instanceType, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EngineVersion" Prelude.<$> engineVersion,
                  (JSON..=) "HighAvailabilityConfig"
                    Prelude.<$> highAvailabilityConfig,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "PreferredMaintenanceWindow"
                    Prelude.<$> preferredMaintenanceWindow,
                  (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                  (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                  (JSON..=) "StorageConfigurations"
                    Prelude.<$> storageConfigurations,
                  (JSON..=) "SubnetIds" Prelude.<$> subnetIds,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Environment where
  type PropertyType "Description" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {description = Prelude.pure newValue, ..}
instance Property "EngineType" Environment where
  type PropertyType "EngineType" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {engineType = newValue, ..}
instance Property "EngineVersion" Environment where
  type PropertyType "EngineVersion" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {engineVersion = Prelude.pure newValue, ..}
instance Property "HighAvailabilityConfig" Environment where
  type PropertyType "HighAvailabilityConfig" Environment = HighAvailabilityConfigProperty
  set newValue Environment {..}
    = Environment {highAvailabilityConfig = Prelude.pure newValue, ..}
instance Property "InstanceType" Environment where
  type PropertyType "InstanceType" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {instanceType = newValue, ..}
instance Property "KmsKeyId" Environment where
  type PropertyType "KmsKeyId" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Name" Environment where
  type PropertyType "Name" Environment = Value Prelude.Text
  set newValue Environment {..} = Environment {name = newValue, ..}
instance Property "PreferredMaintenanceWindow" Environment where
  type PropertyType "PreferredMaintenanceWindow" Environment = Value Prelude.Text
  set newValue Environment {..}
    = Environment
        {preferredMaintenanceWindow = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" Environment where
  type PropertyType "PubliclyAccessible" Environment = Value Prelude.Bool
  set newValue Environment {..}
    = Environment {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" Environment where
  type PropertyType "SecurityGroupIds" Environment = ValueList Prelude.Text
  set newValue Environment {..}
    = Environment {securityGroupIds = Prelude.pure newValue, ..}
instance Property "StorageConfigurations" Environment where
  type PropertyType "StorageConfigurations" Environment = [StorageConfigurationProperty]
  set newValue Environment {..}
    = Environment {storageConfigurations = Prelude.pure newValue, ..}
instance Property "SubnetIds" Environment where
  type PropertyType "SubnetIds" Environment = ValueList Prelude.Text
  set newValue Environment {..}
    = Environment {subnetIds = Prelude.pure newValue, ..}
instance Property "Tags" Environment where
  type PropertyType "Tags" Environment = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Environment {..}
    = Environment {tags = Prelude.pure newValue, ..}