module Stratosphere.Redshift.ScheduledAction.PauseClusterMessageProperty (
        PauseClusterMessageProperty(..), mkPauseClusterMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PauseClusterMessageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-pauseclustermessage.html>
    PauseClusterMessageProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-pauseclustermessage.html#cfn-redshift-scheduledaction-pauseclustermessage-clusteridentifier>
                                 clusterIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPauseClusterMessageProperty ::
  Value Prelude.Text -> PauseClusterMessageProperty
mkPauseClusterMessageProperty clusterIdentifier
  = PauseClusterMessageProperty
      {haddock_workaround_ = (), clusterIdentifier = clusterIdentifier}
instance ToResourceProperties PauseClusterMessageProperty where
  toResourceProperties PauseClusterMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ScheduledAction.PauseClusterMessage",
         supportsTags = Prelude.False,
         properties = ["ClusterIdentifier" JSON..= clusterIdentifier]}
instance JSON.ToJSON PauseClusterMessageProperty where
  toJSON PauseClusterMessageProperty {..}
    = JSON.object ["ClusterIdentifier" JSON..= clusterIdentifier]
instance Property "ClusterIdentifier" PauseClusterMessageProperty where
  type PropertyType "ClusterIdentifier" PauseClusterMessageProperty = Value Prelude.Text
  set newValue PauseClusterMessageProperty {..}
    = PauseClusterMessageProperty {clusterIdentifier = newValue, ..}