module Stratosphere.MediaLive.SignalMap.MonitorDeploymentProperty (
        MonitorDeploymentProperty(..), mkMonitorDeploymentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitorDeploymentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-signalmap-monitordeployment.html>
    MonitorDeploymentProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-signalmap-monitordeployment.html#cfn-medialive-signalmap-monitordeployment-detailsuri>
                               detailsUri :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-signalmap-monitordeployment.html#cfn-medialive-signalmap-monitordeployment-errormessage>
                               errorMessage :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-signalmap-monitordeployment.html#cfn-medialive-signalmap-monitordeployment-status>
                               status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitorDeploymentProperty ::
  Value Prelude.Text -> MonitorDeploymentProperty
mkMonitorDeploymentProperty status
  = MonitorDeploymentProperty
      {haddock_workaround_ = (), status = status,
       detailsUri = Prelude.Nothing, errorMessage = Prelude.Nothing}
instance ToResourceProperties MonitorDeploymentProperty where
  toResourceProperties MonitorDeploymentProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::SignalMap.MonitorDeployment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Status" JSON..= status]
                           (Prelude.catMaybes
                              [(JSON..=) "DetailsUri" Prelude.<$> detailsUri,
                               (JSON..=) "ErrorMessage" Prelude.<$> errorMessage]))}
instance JSON.ToJSON MonitorDeploymentProperty where
  toJSON MonitorDeploymentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Status" JSON..= status]
              (Prelude.catMaybes
                 [(JSON..=) "DetailsUri" Prelude.<$> detailsUri,
                  (JSON..=) "ErrorMessage" Prelude.<$> errorMessage])))
instance Property "DetailsUri" MonitorDeploymentProperty where
  type PropertyType "DetailsUri" MonitorDeploymentProperty = Value Prelude.Text
  set newValue MonitorDeploymentProperty {..}
    = MonitorDeploymentProperty
        {detailsUri = Prelude.pure newValue, ..}
instance Property "ErrorMessage" MonitorDeploymentProperty where
  type PropertyType "ErrorMessage" MonitorDeploymentProperty = Value Prelude.Text
  set newValue MonitorDeploymentProperty {..}
    = MonitorDeploymentProperty
        {errorMessage = Prelude.pure newValue, ..}
instance Property "Status" MonitorDeploymentProperty where
  type PropertyType "Status" MonitorDeploymentProperty = Value Prelude.Text
  set newValue MonitorDeploymentProperty {..}
    = MonitorDeploymentProperty {status = newValue, ..}