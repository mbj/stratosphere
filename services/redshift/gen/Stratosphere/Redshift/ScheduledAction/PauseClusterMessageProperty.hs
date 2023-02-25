module Stratosphere.Redshift.ScheduledAction.PauseClusterMessageProperty (
        PauseClusterMessageProperty(..), mkPauseClusterMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PauseClusterMessageProperty
  = PauseClusterMessageProperty {clusterIdentifier :: (Value Prelude.Text)}
mkPauseClusterMessageProperty ::
  Value Prelude.Text -> PauseClusterMessageProperty
mkPauseClusterMessageProperty clusterIdentifier
  = PauseClusterMessageProperty
      {clusterIdentifier = clusterIdentifier}
instance ToResourceProperties PauseClusterMessageProperty where
  toResourceProperties PauseClusterMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ScheduledAction.PauseClusterMessage",
         properties = ["ClusterIdentifier" JSON..= clusterIdentifier]}
instance JSON.ToJSON PauseClusterMessageProperty where
  toJSON PauseClusterMessageProperty {..}
    = JSON.object ["ClusterIdentifier" JSON..= clusterIdentifier]
instance Property "ClusterIdentifier" PauseClusterMessageProperty where
  type PropertyType "ClusterIdentifier" PauseClusterMessageProperty = Value Prelude.Text
  set newValue PauseClusterMessageProperty {}
    = PauseClusterMessageProperty {clusterIdentifier = newValue, ..}