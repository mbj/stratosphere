module Stratosphere.SageMaker.MlflowTrackingServer (
        MlflowTrackingServer(..), mkMlflowTrackingServer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MlflowTrackingServer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-mlflowtrackingserver.html>
    MlflowTrackingServer {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-mlflowtrackingserver.html#cfn-sagemaker-mlflowtrackingserver-artifactstoreuri>
                          artifactStoreUri :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-mlflowtrackingserver.html#cfn-sagemaker-mlflowtrackingserver-automaticmodelregistration>
                          automaticModelRegistration :: (Prelude.Maybe (Value Prelude.Bool)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-mlflowtrackingserver.html#cfn-sagemaker-mlflowtrackingserver-mlflowversion>
                          mlflowVersion :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-mlflowtrackingserver.html#cfn-sagemaker-mlflowtrackingserver-rolearn>
                          roleArn :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-mlflowtrackingserver.html#cfn-sagemaker-mlflowtrackingserver-tags>
                          tags :: (Prelude.Maybe [Tag]),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-mlflowtrackingserver.html#cfn-sagemaker-mlflowtrackingserver-trackingservername>
                          trackingServerName :: (Value Prelude.Text),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-mlflowtrackingserver.html#cfn-sagemaker-mlflowtrackingserver-trackingserversize>
                          trackingServerSize :: (Prelude.Maybe (Value Prelude.Text)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-mlflowtrackingserver.html#cfn-sagemaker-mlflowtrackingserver-weeklymaintenancewindowstart>
                          weeklyMaintenanceWindowStart :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMlflowTrackingServer ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> MlflowTrackingServer
mkMlflowTrackingServer artifactStoreUri roleArn trackingServerName
  = MlflowTrackingServer
      {haddock_workaround_ = (), artifactStoreUri = artifactStoreUri,
       roleArn = roleArn, trackingServerName = trackingServerName,
       automaticModelRegistration = Prelude.Nothing,
       mlflowVersion = Prelude.Nothing, tags = Prelude.Nothing,
       trackingServerSize = Prelude.Nothing,
       weeklyMaintenanceWindowStart = Prelude.Nothing}
instance ToResourceProperties MlflowTrackingServer where
  toResourceProperties MlflowTrackingServer {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MlflowTrackingServer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ArtifactStoreUri" JSON..= artifactStoreUri,
                            "RoleArn" JSON..= roleArn,
                            "TrackingServerName" JSON..= trackingServerName]
                           (Prelude.catMaybes
                              [(JSON..=) "AutomaticModelRegistration"
                                 Prelude.<$> automaticModelRegistration,
                               (JSON..=) "MlflowVersion" Prelude.<$> mlflowVersion,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TrackingServerSize" Prelude.<$> trackingServerSize,
                               (JSON..=) "WeeklyMaintenanceWindowStart"
                                 Prelude.<$> weeklyMaintenanceWindowStart]))}
instance JSON.ToJSON MlflowTrackingServer where
  toJSON MlflowTrackingServer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ArtifactStoreUri" JSON..= artifactStoreUri,
               "RoleArn" JSON..= roleArn,
               "TrackingServerName" JSON..= trackingServerName]
              (Prelude.catMaybes
                 [(JSON..=) "AutomaticModelRegistration"
                    Prelude.<$> automaticModelRegistration,
                  (JSON..=) "MlflowVersion" Prelude.<$> mlflowVersion,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TrackingServerSize" Prelude.<$> trackingServerSize,
                  (JSON..=) "WeeklyMaintenanceWindowStart"
                    Prelude.<$> weeklyMaintenanceWindowStart])))
instance Property "ArtifactStoreUri" MlflowTrackingServer where
  type PropertyType "ArtifactStoreUri" MlflowTrackingServer = Value Prelude.Text
  set newValue MlflowTrackingServer {..}
    = MlflowTrackingServer {artifactStoreUri = newValue, ..}
instance Property "AutomaticModelRegistration" MlflowTrackingServer where
  type PropertyType "AutomaticModelRegistration" MlflowTrackingServer = Value Prelude.Bool
  set newValue MlflowTrackingServer {..}
    = MlflowTrackingServer
        {automaticModelRegistration = Prelude.pure newValue, ..}
instance Property "MlflowVersion" MlflowTrackingServer where
  type PropertyType "MlflowVersion" MlflowTrackingServer = Value Prelude.Text
  set newValue MlflowTrackingServer {..}
    = MlflowTrackingServer {mlflowVersion = Prelude.pure newValue, ..}
instance Property "RoleArn" MlflowTrackingServer where
  type PropertyType "RoleArn" MlflowTrackingServer = Value Prelude.Text
  set newValue MlflowTrackingServer {..}
    = MlflowTrackingServer {roleArn = newValue, ..}
instance Property "Tags" MlflowTrackingServer where
  type PropertyType "Tags" MlflowTrackingServer = [Tag]
  set newValue MlflowTrackingServer {..}
    = MlflowTrackingServer {tags = Prelude.pure newValue, ..}
instance Property "TrackingServerName" MlflowTrackingServer where
  type PropertyType "TrackingServerName" MlflowTrackingServer = Value Prelude.Text
  set newValue MlflowTrackingServer {..}
    = MlflowTrackingServer {trackingServerName = newValue, ..}
instance Property "TrackingServerSize" MlflowTrackingServer where
  type PropertyType "TrackingServerSize" MlflowTrackingServer = Value Prelude.Text
  set newValue MlflowTrackingServer {..}
    = MlflowTrackingServer
        {trackingServerSize = Prelude.pure newValue, ..}
instance Property "WeeklyMaintenanceWindowStart" MlflowTrackingServer where
  type PropertyType "WeeklyMaintenanceWindowStart" MlflowTrackingServer = Value Prelude.Text
  set newValue MlflowTrackingServer {..}
    = MlflowTrackingServer
        {weeklyMaintenanceWindowStart = Prelude.pure newValue, ..}