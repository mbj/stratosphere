module Stratosphere.S3.Bucket.ReplicationConfigurationProperty (
        module Exports, ReplicationConfigurationProperty(..),
        mkReplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.ReplicationRuleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationConfigurationProperty
  = ReplicationConfigurationProperty {role :: (Value Prelude.Text),
                                      rules :: [ReplicationRuleProperty]}
mkReplicationConfigurationProperty ::
  Value Prelude.Text
  -> [ReplicationRuleProperty] -> ReplicationConfigurationProperty
mkReplicationConfigurationProperty role rules
  = ReplicationConfigurationProperty {role = role, rules = rules}
instance ToResourceProperties ReplicationConfigurationProperty where
  toResourceProperties ReplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ReplicationConfiguration",
         properties = ["Role" JSON..= role, "Rules" JSON..= rules]}
instance JSON.ToJSON ReplicationConfigurationProperty where
  toJSON ReplicationConfigurationProperty {..}
    = JSON.object ["Role" JSON..= role, "Rules" JSON..= rules]
instance Property "Role" ReplicationConfigurationProperty where
  type PropertyType "Role" ReplicationConfigurationProperty = Value Prelude.Text
  set newValue ReplicationConfigurationProperty {..}
    = ReplicationConfigurationProperty {role = newValue, ..}
instance Property "Rules" ReplicationConfigurationProperty where
  type PropertyType "Rules" ReplicationConfigurationProperty = [ReplicationRuleProperty]
  set newValue ReplicationConfigurationProperty {..}
    = ReplicationConfigurationProperty {rules = newValue, ..}