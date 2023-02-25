module Stratosphere.IoTEvents.AlarmModel.SqsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SqsProperty :: Prelude.Type
instance ToResourceProperties SqsProperty
instance JSON.ToJSON SqsProperty