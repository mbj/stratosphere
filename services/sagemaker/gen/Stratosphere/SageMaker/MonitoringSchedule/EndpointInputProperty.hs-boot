module Stratosphere.SageMaker.MonitoringSchedule.EndpointInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EndpointInputProperty :: Prelude.Type
instance ToResourceProperties EndpointInputProperty
instance JSON.ToJSON EndpointInputProperty