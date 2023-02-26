module Stratosphere.MSK.Cluster.BrokerNodeGroupInfoProperty (
        module Exports, BrokerNodeGroupInfoProperty(..),
        mkBrokerNodeGroupInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.ConnectivityInfoProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.StorageInfoProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BrokerNodeGroupInfoProperty
  = BrokerNodeGroupInfoProperty {brokerAZDistribution :: (Prelude.Maybe (Value Prelude.Text)),
                                 clientSubnets :: (ValueList Prelude.Text),
                                 connectivityInfo :: (Prelude.Maybe ConnectivityInfoProperty),
                                 instanceType :: (Value Prelude.Text),
                                 securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                 storageInfo :: (Prelude.Maybe StorageInfoProperty)}
mkBrokerNodeGroupInfoProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Text -> BrokerNodeGroupInfoProperty
mkBrokerNodeGroupInfoProperty clientSubnets instanceType
  = BrokerNodeGroupInfoProperty
      {clientSubnets = clientSubnets, instanceType = instanceType,
       brokerAZDistribution = Prelude.Nothing,
       connectivityInfo = Prelude.Nothing,
       securityGroups = Prelude.Nothing, storageInfo = Prelude.Nothing}
instance ToResourceProperties BrokerNodeGroupInfoProperty where
  toResourceProperties BrokerNodeGroupInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.BrokerNodeGroupInfo",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClientSubnets" JSON..= clientSubnets,
                            "InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "BrokerAZDistribution" Prelude.<$> brokerAZDistribution,
                               (JSON..=) "ConnectivityInfo" Prelude.<$> connectivityInfo,
                               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                               (JSON..=) "StorageInfo" Prelude.<$> storageInfo]))}
instance JSON.ToJSON BrokerNodeGroupInfoProperty where
  toJSON BrokerNodeGroupInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClientSubnets" JSON..= clientSubnets,
               "InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "BrokerAZDistribution" Prelude.<$> brokerAZDistribution,
                  (JSON..=) "ConnectivityInfo" Prelude.<$> connectivityInfo,
                  (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                  (JSON..=) "StorageInfo" Prelude.<$> storageInfo])))
instance Property "BrokerAZDistribution" BrokerNodeGroupInfoProperty where
  type PropertyType "BrokerAZDistribution" BrokerNodeGroupInfoProperty = Value Prelude.Text
  set newValue BrokerNodeGroupInfoProperty {..}
    = BrokerNodeGroupInfoProperty
        {brokerAZDistribution = Prelude.pure newValue, ..}
instance Property "ClientSubnets" BrokerNodeGroupInfoProperty where
  type PropertyType "ClientSubnets" BrokerNodeGroupInfoProperty = ValueList Prelude.Text
  set newValue BrokerNodeGroupInfoProperty {..}
    = BrokerNodeGroupInfoProperty {clientSubnets = newValue, ..}
instance Property "ConnectivityInfo" BrokerNodeGroupInfoProperty where
  type PropertyType "ConnectivityInfo" BrokerNodeGroupInfoProperty = ConnectivityInfoProperty
  set newValue BrokerNodeGroupInfoProperty {..}
    = BrokerNodeGroupInfoProperty
        {connectivityInfo = Prelude.pure newValue, ..}
instance Property "InstanceType" BrokerNodeGroupInfoProperty where
  type PropertyType "InstanceType" BrokerNodeGroupInfoProperty = Value Prelude.Text
  set newValue BrokerNodeGroupInfoProperty {..}
    = BrokerNodeGroupInfoProperty {instanceType = newValue, ..}
instance Property "SecurityGroups" BrokerNodeGroupInfoProperty where
  type PropertyType "SecurityGroups" BrokerNodeGroupInfoProperty = ValueList Prelude.Text
  set newValue BrokerNodeGroupInfoProperty {..}
    = BrokerNodeGroupInfoProperty
        {securityGroups = Prelude.pure newValue, ..}
instance Property "StorageInfo" BrokerNodeGroupInfoProperty where
  type PropertyType "StorageInfo" BrokerNodeGroupInfoProperty = StorageInfoProperty
  set newValue BrokerNodeGroupInfoProperty {..}
    = BrokerNodeGroupInfoProperty
        {storageInfo = Prelude.pure newValue, ..}