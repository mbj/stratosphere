module Stratosphere.SecurityLake.DataLake.ReplicationConfigurationProperty (
        ReplicationConfigurationProperty(..),
        mkReplicationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ReplicationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-datalake-replicationconfiguration.html>
    ReplicationConfigurationProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-datalake-replicationconfiguration.html#cfn-securitylake-datalake-replicationconfiguration-regions>
                                      regions :: (Prelude.Maybe (ValueList Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securitylake-datalake-replicationconfiguration.html#cfn-securitylake-datalake-replicationconfiguration-rolearn>
                                      roleArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkReplicationConfigurationProperty ::
  ReplicationConfigurationProperty
mkReplicationConfigurationProperty
  = ReplicationConfigurationProperty
      {haddock_workaround_ = (), regions = Prelude.Nothing,
       roleArn = Prelude.Nothing}
instance ToResourceProperties ReplicationConfigurationProperty where
  toResourceProperties ReplicationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::DataLake.ReplicationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Regions" Prelude.<$> regions,
                            (JSON..=) "RoleArn" Prelude.<$> roleArn])}
instance JSON.ToJSON ReplicationConfigurationProperty where
  toJSON ReplicationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Regions" Prelude.<$> regions,
               (JSON..=) "RoleArn" Prelude.<$> roleArn]))
instance Property "Regions" ReplicationConfigurationProperty where
  type PropertyType "Regions" ReplicationConfigurationProperty = ValueList Prelude.Text
  set newValue ReplicationConfigurationProperty {..}
    = ReplicationConfigurationProperty
        {regions = Prelude.pure newValue, ..}
instance Property "RoleArn" ReplicationConfigurationProperty where
  type PropertyType "RoleArn" ReplicationConfigurationProperty = Value Prelude.Text
  set newValue ReplicationConfigurationProperty {..}
    = ReplicationConfigurationProperty
        {roleArn = Prelude.pure newValue, ..}