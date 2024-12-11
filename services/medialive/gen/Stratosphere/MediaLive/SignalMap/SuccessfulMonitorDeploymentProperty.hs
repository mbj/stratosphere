module Stratosphere.MediaLive.SignalMap.SuccessfulMonitorDeploymentProperty (
        SuccessfulMonitorDeploymentProperty(..),
        mkSuccessfulMonitorDeploymentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SuccessfulMonitorDeploymentProperty
  = SuccessfulMonitorDeploymentProperty {detailsUri :: (Value Prelude.Text),
                                         status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSuccessfulMonitorDeploymentProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> SuccessfulMonitorDeploymentProperty
mkSuccessfulMonitorDeploymentProperty detailsUri status
  = SuccessfulMonitorDeploymentProperty
      {detailsUri = detailsUri, status = status}
instance ToResourceProperties SuccessfulMonitorDeploymentProperty where
  toResourceProperties SuccessfulMonitorDeploymentProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::SignalMap.SuccessfulMonitorDeployment",
         supportsTags = Prelude.False,
         properties = ["DetailsUri" JSON..= detailsUri,
                       "Status" JSON..= status]}
instance JSON.ToJSON SuccessfulMonitorDeploymentProperty where
  toJSON SuccessfulMonitorDeploymentProperty {..}
    = JSON.object
        ["DetailsUri" JSON..= detailsUri, "Status" JSON..= status]
instance Property "DetailsUri" SuccessfulMonitorDeploymentProperty where
  type PropertyType "DetailsUri" SuccessfulMonitorDeploymentProperty = Value Prelude.Text
  set newValue SuccessfulMonitorDeploymentProperty {..}
    = SuccessfulMonitorDeploymentProperty {detailsUri = newValue, ..}
instance Property "Status" SuccessfulMonitorDeploymentProperty where
  type PropertyType "Status" SuccessfulMonitorDeploymentProperty = Value Prelude.Text
  set newValue SuccessfulMonitorDeploymentProperty {..}
    = SuccessfulMonitorDeploymentProperty {status = newValue, ..}