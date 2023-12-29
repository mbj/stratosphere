module Stratosphere.IoTEvents.AlarmModel.AlarmRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AlarmRuleProperty :: Prelude.Type
instance ToResourceProperties AlarmRuleProperty
instance Prelude.Eq AlarmRuleProperty
instance Prelude.Show AlarmRuleProperty
instance JSON.ToJSON AlarmRuleProperty