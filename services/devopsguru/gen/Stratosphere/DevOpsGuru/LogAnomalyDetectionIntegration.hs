module Stratosphere.DevOpsGuru.LogAnomalyDetectionIntegration (
        LogAnomalyDetectionIntegration(..),
        mkLogAnomalyDetectionIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogAnomalyDetectionIntegration
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-devopsguru-loganomalydetectionintegration.html>
    LogAnomalyDetectionIntegration {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogAnomalyDetectionIntegration :: LogAnomalyDetectionIntegration
mkLogAnomalyDetectionIntegration
  = LogAnomalyDetectionIntegration {haddock_workaround_ = ()}
instance ToResourceProperties LogAnomalyDetectionIntegration where
  toResourceProperties LogAnomalyDetectionIntegration {}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::LogAnomalyDetectionIntegration",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON LogAnomalyDetectionIntegration where
  toJSON LogAnomalyDetectionIntegration {} = JSON.object []