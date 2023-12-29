module Stratosphere.DevOpsGuru.LogAnomalyDetectionIntegration (
        LogAnomalyDetectionIntegration(..),
        mkLogAnomalyDetectionIntegration
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LogAnomalyDetectionIntegration
  = LogAnomalyDetectionIntegration {}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogAnomalyDetectionIntegration :: LogAnomalyDetectionIntegration
mkLogAnomalyDetectionIntegration
  = LogAnomalyDetectionIntegration {}
instance ToResourceProperties LogAnomalyDetectionIntegration where
  toResourceProperties LogAnomalyDetectionIntegration {}
    = ResourceProperties
        {awsType = "AWS::DevOpsGuru::LogAnomalyDetectionIntegration",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON LogAnomalyDetectionIntegration where
  toJSON LogAnomalyDetectionIntegration {} = JSON.object []