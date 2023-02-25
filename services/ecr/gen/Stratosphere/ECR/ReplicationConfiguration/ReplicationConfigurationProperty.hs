module Stratosphere.ECR.ReplicationConfiguration.ReplicationConfigurationProperty (
        module Exports, ReplicationConfigurationProperty(..),
        mkReplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECR.ReplicationConfiguration.ReplicationRuleProperty as Exports
import Stratosphere.ResourceProperties
data ReplicationConfigurationProperty
  = ReplicationConfigurationProperty {rules :: [ReplicationRuleProperty]}
mkReplicationConfigurationProperty ::
  [ReplicationRuleProperty] -> ReplicationConfigurationProperty
mkReplicationConfigurationProperty rules
  = ReplicationConfigurationProperty {rules = rules}
instance ToResourceProperties ReplicationConfigurationProperty where
  toResourceProperties ReplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::ReplicationConfiguration.ReplicationConfiguration",
         properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON ReplicationConfigurationProperty where
  toJSON ReplicationConfigurationProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" ReplicationConfigurationProperty where
  type PropertyType "Rules" ReplicationConfigurationProperty = [ReplicationRuleProperty]
  set newValue ReplicationConfigurationProperty {}
    = ReplicationConfigurationProperty {rules = newValue, ..}