module Stratosphere.ECR.ReplicationConfiguration (
        module Exports, ReplicationConfiguration(..),
        mkReplicationConfiguration
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECR.ReplicationConfiguration.ReplicationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ReplicationConfiguration
  = ReplicationConfiguration {replicationConfiguration :: ReplicationConfigurationProperty}
mkReplicationConfiguration ::
  ReplicationConfigurationProperty -> ReplicationConfiguration
mkReplicationConfiguration replicationConfiguration
  = ReplicationConfiguration
      {replicationConfiguration = replicationConfiguration}
instance ToResourceProperties ReplicationConfiguration where
  toResourceProperties ReplicationConfiguration {..}
    = ResourceProperties
        {awsType = "AWS::ECR::ReplicationConfiguration",
         properties = ["ReplicationConfiguration"
                         JSON..= replicationConfiguration]}
instance JSON.ToJSON ReplicationConfiguration where
  toJSON ReplicationConfiguration {..}
    = JSON.object
        ["ReplicationConfiguration" JSON..= replicationConfiguration]
instance Property "ReplicationConfiguration" ReplicationConfiguration where
  type PropertyType "ReplicationConfiguration" ReplicationConfiguration = ReplicationConfigurationProperty
  set newValue ReplicationConfiguration {}
    = ReplicationConfiguration
        {replicationConfiguration = newValue, ..}