module Stratosphere.Timestream.InfluxDBInstance (
        module Exports, InfluxDBInstance(..), mkInfluxDBInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Timestream.InfluxDBInstance.LogDeliveryConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data InfluxDBInstance
  = InfluxDBInstance {allocatedStorage :: (Prelude.Maybe (Value Prelude.Integer)),
                      bucket :: (Prelude.Maybe (Value Prelude.Text)),
                      dbInstanceType :: (Prelude.Maybe (Value Prelude.Text)),
                      dbParameterGroupIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                      dbStorageType :: (Prelude.Maybe (Value Prelude.Text)),
                      deploymentType :: (Prelude.Maybe (Value Prelude.Text)),
                      logDeliveryConfiguration :: (Prelude.Maybe LogDeliveryConfigurationProperty),
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      organization :: (Prelude.Maybe (Value Prelude.Text)),
                      password :: (Prelude.Maybe (Value Prelude.Text)),
                      publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
                      tags :: (Prelude.Maybe [Tag]),
                      username :: (Prelude.Maybe (Value Prelude.Text)),
                      vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                      vpcSubnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInfluxDBInstance :: InfluxDBInstance
mkInfluxDBInstance
  = InfluxDBInstance
      {allocatedStorage = Prelude.Nothing, bucket = Prelude.Nothing,
       dbInstanceType = Prelude.Nothing,
       dbParameterGroupIdentifier = Prelude.Nothing,
       dbStorageType = Prelude.Nothing, deploymentType = Prelude.Nothing,
       logDeliveryConfiguration = Prelude.Nothing, name = Prelude.Nothing,
       organization = Prelude.Nothing, password = Prelude.Nothing,
       publiclyAccessible = Prelude.Nothing, tags = Prelude.Nothing,
       username = Prelude.Nothing, vpcSecurityGroupIds = Prelude.Nothing,
       vpcSubnetIds = Prelude.Nothing}
instance ToResourceProperties InfluxDBInstance where
  toResourceProperties InfluxDBInstance {..}
    = ResourceProperties
        {awsType = "AWS::Timestream::InfluxDBInstance",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocatedStorage" Prelude.<$> allocatedStorage,
                            (JSON..=) "Bucket" Prelude.<$> bucket,
                            (JSON..=) "DbInstanceType" Prelude.<$> dbInstanceType,
                            (JSON..=) "DbParameterGroupIdentifier"
                              Prelude.<$> dbParameterGroupIdentifier,
                            (JSON..=) "DbStorageType" Prelude.<$> dbStorageType,
                            (JSON..=) "DeploymentType" Prelude.<$> deploymentType,
                            (JSON..=) "LogDeliveryConfiguration"
                              Prelude.<$> logDeliveryConfiguration,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Organization" Prelude.<$> organization,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Username" Prelude.<$> username,
                            (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds,
                            (JSON..=) "VpcSubnetIds" Prelude.<$> vpcSubnetIds])}
instance JSON.ToJSON InfluxDBInstance where
  toJSON InfluxDBInstance {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocatedStorage" Prelude.<$> allocatedStorage,
               (JSON..=) "Bucket" Prelude.<$> bucket,
               (JSON..=) "DbInstanceType" Prelude.<$> dbInstanceType,
               (JSON..=) "DbParameterGroupIdentifier"
                 Prelude.<$> dbParameterGroupIdentifier,
               (JSON..=) "DbStorageType" Prelude.<$> dbStorageType,
               (JSON..=) "DeploymentType" Prelude.<$> deploymentType,
               (JSON..=) "LogDeliveryConfiguration"
                 Prelude.<$> logDeliveryConfiguration,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Organization" Prelude.<$> organization,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "PubliclyAccessible" Prelude.<$> publiclyAccessible,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Username" Prelude.<$> username,
               (JSON..=) "VpcSecurityGroupIds" Prelude.<$> vpcSecurityGroupIds,
               (JSON..=) "VpcSubnetIds" Prelude.<$> vpcSubnetIds]))
instance Property "AllocatedStorage" InfluxDBInstance where
  type PropertyType "AllocatedStorage" InfluxDBInstance = Value Prelude.Integer
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {allocatedStorage = Prelude.pure newValue, ..}
instance Property "Bucket" InfluxDBInstance where
  type PropertyType "Bucket" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {bucket = Prelude.pure newValue, ..}
instance Property "DbInstanceType" InfluxDBInstance where
  type PropertyType "DbInstanceType" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {dbInstanceType = Prelude.pure newValue, ..}
instance Property "DbParameterGroupIdentifier" InfluxDBInstance where
  type PropertyType "DbParameterGroupIdentifier" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance
        {dbParameterGroupIdentifier = Prelude.pure newValue, ..}
instance Property "DbStorageType" InfluxDBInstance where
  type PropertyType "DbStorageType" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {dbStorageType = Prelude.pure newValue, ..}
instance Property "DeploymentType" InfluxDBInstance where
  type PropertyType "DeploymentType" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {deploymentType = Prelude.pure newValue, ..}
instance Property "LogDeliveryConfiguration" InfluxDBInstance where
  type PropertyType "LogDeliveryConfiguration" InfluxDBInstance = LogDeliveryConfigurationProperty
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance
        {logDeliveryConfiguration = Prelude.pure newValue, ..}
instance Property "Name" InfluxDBInstance where
  type PropertyType "Name" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {name = Prelude.pure newValue, ..}
instance Property "Organization" InfluxDBInstance where
  type PropertyType "Organization" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {organization = Prelude.pure newValue, ..}
instance Property "Password" InfluxDBInstance where
  type PropertyType "Password" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {password = Prelude.pure newValue, ..}
instance Property "PubliclyAccessible" InfluxDBInstance where
  type PropertyType "PubliclyAccessible" InfluxDBInstance = Value Prelude.Bool
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {publiclyAccessible = Prelude.pure newValue, ..}
instance Property "Tags" InfluxDBInstance where
  type PropertyType "Tags" InfluxDBInstance = [Tag]
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {tags = Prelude.pure newValue, ..}
instance Property "Username" InfluxDBInstance where
  type PropertyType "Username" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {username = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupIds" InfluxDBInstance where
  type PropertyType "VpcSecurityGroupIds" InfluxDBInstance = ValueList Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance
        {vpcSecurityGroupIds = Prelude.pure newValue, ..}
instance Property "VpcSubnetIds" InfluxDBInstance where
  type PropertyType "VpcSubnetIds" InfluxDBInstance = ValueList Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {vpcSubnetIds = Prelude.pure newValue, ..}