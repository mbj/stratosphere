module Stratosphere.IoTEvents.AlarmModel.PayloadProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PayloadProperty :: Prelude.Type
instance ToResourceProperties PayloadProperty
instance JSON.ToJSON PayloadProperty