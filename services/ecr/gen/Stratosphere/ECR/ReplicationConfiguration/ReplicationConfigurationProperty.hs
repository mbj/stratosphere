module Stratosphere.ECR.ReplicationConfiguration.ReplicationConfigurationProperty (
        module Exports, ReplicationConfigurationProperty(..),
        mkReplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECR.ReplicationConfiguration.ReplicationRuleProperty as Exports
import Stratosphere.ResourceProperties
data ReplicationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-replicationconfiguration-replicationconfiguration.html>
    ReplicationConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecr-replicationconfiguration-replicationconfiguration.html#cfn-ecr-replicationconfiguration-replicationconfiguration-rules>
                                      rules :: [ReplicationRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationConfigurationProperty ::
  [ReplicationRuleProperty] -> ReplicationConfigurationProperty
mkReplicationConfigurationProperty rules
  = ReplicationConfigurationProperty
      {haddock_workaround_ = (), rules = rules}
instance ToResourceProperties ReplicationConfigurationProperty where
  toResourceProperties ReplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECR::ReplicationConfiguration.ReplicationConfiguration",
         supportsTags = Prelude.False, properties = ["Rules" JSON..= rules]}
instance JSON.ToJSON ReplicationConfigurationProperty where
  toJSON ReplicationConfigurationProperty {..}
    = JSON.object ["Rules" JSON..= rules]
instance Property "Rules" ReplicationConfigurationProperty where
  type PropertyType "Rules" ReplicationConfigurationProperty = [ReplicationRuleProperty]
  set newValue ReplicationConfigurationProperty {..}
    = ReplicationConfigurationProperty {rules = newValue, ..}