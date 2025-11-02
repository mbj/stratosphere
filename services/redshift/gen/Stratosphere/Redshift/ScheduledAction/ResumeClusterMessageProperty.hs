module Stratosphere.Redshift.ScheduledAction.ResumeClusterMessageProperty (
        ResumeClusterMessageProperty(..), mkResumeClusterMessageProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ResumeClusterMessageProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-resumeclustermessage.html>
    ResumeClusterMessageProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-scheduledaction-resumeclustermessage.html#cfn-redshift-scheduledaction-resumeclustermessage-clusteridentifier>
                                  clusterIdentifier :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkResumeClusterMessageProperty ::
  Value Prelude.Text -> ResumeClusterMessageProperty
mkResumeClusterMessageProperty clusterIdentifier
  = ResumeClusterMessageProperty
      {haddock_workaround_ = (), clusterIdentifier = clusterIdentifier}
instance ToResourceProperties ResumeClusterMessageProperty where
  toResourceProperties ResumeClusterMessageProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::ScheduledAction.ResumeClusterMessage",
         supportsTags = Prelude.False,
         properties = ["ClusterIdentifier" JSON..= clusterIdentifier]}
instance JSON.ToJSON ResumeClusterMessageProperty where
  toJSON ResumeClusterMessageProperty {..}
    = JSON.object ["ClusterIdentifier" JSON..= clusterIdentifier]
instance Property "ClusterIdentifier" ResumeClusterMessageProperty where
  type PropertyType "ClusterIdentifier" ResumeClusterMessageProperty = Value Prelude.Text
  set newValue ResumeClusterMessageProperty {..}
    = ResumeClusterMessageProperty {clusterIdentifier = newValue, ..}