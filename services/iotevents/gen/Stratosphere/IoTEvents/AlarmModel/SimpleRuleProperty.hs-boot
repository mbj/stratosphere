module Stratosphere.IoTEvents.AlarmModel.SimpleRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SimpleRuleProperty :: Prelude.Type
instance ToResourceProperties SimpleRuleProperty
instance JSON.ToJSON SimpleRuleProperty