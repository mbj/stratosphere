module Stratosphere.IoTEvents.AlarmModel.AcknowledgeFlowProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AcknowledgeFlowProperty :: Prelude.Type
instance ToResourceProperties AcknowledgeFlowProperty
instance JSON.ToJSON AcknowledgeFlowProperty