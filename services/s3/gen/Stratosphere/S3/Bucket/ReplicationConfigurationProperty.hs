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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html>
    ReplicationConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html#cfn-s3-bucket-replicationconfiguration-role>
                                      role :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html#cfn-s3-bucket-replicationconfiguration-rules>
                                      rules :: [ReplicationRuleProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationConfigurationProperty ::
  Value Prelude.Text
  -> [ReplicationRuleProperty] -> ReplicationConfigurationProperty
mkReplicationConfigurationProperty role rules
  = ReplicationConfigurationProperty
      {haddock_workaround_ = (), role = role, rules = rules}
instance ToResourceProperties ReplicationConfigurationProperty where
  toResourceProperties ReplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.ReplicationConfiguration",
         supportsTags = Prelude.False,
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