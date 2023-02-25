module Stratosphere.Redshift.ScheduledAction.ResumeClusterMessageProperty (
        ResumeClusterMessageProperty(..), mkResumeClusterMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResumeClusterMessageProperty
  = ResumeClusterMessageProperty {clusterIdentifier :: (Value Prelude.Text)}
mkResumeClusterMessageProperty ::
  Value Prelude.Text -> ResumeClusterMessageProperty
mkResumeClusterMessageProperty clusterIdentifier
  = ResumeClusterMessageProperty
      {clusterIdentifier = clusterIdentifier}
instance ToResourceProperties ResumeClusterMessageProperty where
  toResourceProperties ResumeClusterMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ScheduledAction.ResumeClusterMessage",
         properties = ["ClusterIdentifier" JSON..= clusterIdentifier]}
instance JSON.ToJSON ResumeClusterMessageProperty where
  toJSON ResumeClusterMessageProperty {..}
    = JSON.object ["ClusterIdentifier" JSON..= clusterIdentifier]
instance Property "ClusterIdentifier" ResumeClusterMessageProperty where
  type PropertyType "ClusterIdentifier" ResumeClusterMessageProperty = Value Prelude.Text
  set newValue ResumeClusterMessageProperty {}
    = ResumeClusterMessageProperty {clusterIdentifier = newValue, ..}