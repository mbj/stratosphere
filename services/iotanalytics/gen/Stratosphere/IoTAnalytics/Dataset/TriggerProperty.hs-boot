module Stratosphere.IoTAnalytics.Dataset.TriggerProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TriggerProperty :: Prelude.Type
instance ToResourceProperties TriggerProperty
instance JSON.ToJSON TriggerProperty