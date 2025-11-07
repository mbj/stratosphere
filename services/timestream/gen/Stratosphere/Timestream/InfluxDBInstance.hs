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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html>
    InfluxDBInstance {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-allocatedstorage>
                      allocatedStorage :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-bucket>
                      bucket :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-dbinstancetype>
                      dbInstanceType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-dbparametergroupidentifier>
                      dbParameterGroupIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-dbstoragetype>
                      dbStorageType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-deploymenttype>
                      deploymentType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-logdeliveryconfiguration>
                      logDeliveryConfiguration :: (Prelude.Maybe LogDeliveryConfigurationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-name>
                      name :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-networktype>
                      networkType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-organization>
                      organization :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-password>
                      password :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-port>
                      port :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-publiclyaccessible>
                      publiclyAccessible :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-username>
                      username :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-vpcsecuritygroupids>
                      vpcSecurityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-timestream-influxdbinstance.html#cfn-timestream-influxdbinstance-vpcsubnetids>
                      vpcSubnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInfluxDBInstance :: InfluxDBInstance
mkInfluxDBInstance
  = InfluxDBInstance
      {haddock_workaround_ = (), allocatedStorage = Prelude.Nothing,
       bucket = Prelude.Nothing, dbInstanceType = Prelude.Nothing,
       dbParameterGroupIdentifier = Prelude.Nothing,
       dbStorageType = Prelude.Nothing, deploymentType = Prelude.Nothing,
       logDeliveryConfiguration = Prelude.Nothing, name = Prelude.Nothing,
       networkType = Prelude.Nothing, organization = Prelude.Nothing,
       password = Prelude.Nothing, port = Prelude.Nothing,
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
                            (JSON..=) "NetworkType" Prelude.<$> networkType,
                            (JSON..=) "Organization" Prelude.<$> organization,
                            (JSON..=) "Password" Prelude.<$> password,
                            (JSON..=) "Port" Prelude.<$> port,
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
               (JSON..=) "NetworkType" Prelude.<$> networkType,
               (JSON..=) "Organization" Prelude.<$> organization,
               (JSON..=) "Password" Prelude.<$> password,
               (JSON..=) "Port" Prelude.<$> port,
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
instance Property "NetworkType" InfluxDBInstance where
  type PropertyType "NetworkType" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {networkType = Prelude.pure newValue, ..}
instance Property "Organization" InfluxDBInstance where
  type PropertyType "Organization" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {organization = Prelude.pure newValue, ..}
instance Property "Password" InfluxDBInstance where
  type PropertyType "Password" InfluxDBInstance = Value Prelude.Text
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {password = Prelude.pure newValue, ..}
instance Property "Port" InfluxDBInstance where
  type PropertyType "Port" InfluxDBInstance = Value Prelude.Integer
  set newValue InfluxDBInstance {..}
    = InfluxDBInstance {port = Prelude.pure newValue, ..}
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