module Stratosphere.IoTEvents.AlarmModel.AlarmActionProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AlarmActionProperty :: Prelude.Type
instance ToResourceProperties AlarmActionProperty
instance JSON.ToJSON AlarmActionProperty