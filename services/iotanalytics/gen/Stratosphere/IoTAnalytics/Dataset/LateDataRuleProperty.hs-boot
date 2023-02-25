module Stratosphere.IoTAnalytics.Dataset.LateDataRuleProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LateDataRuleProperty :: Prelude.Type
instance ToResourceProperties LateDataRuleProperty
instance JSON.ToJSON LateDataRuleProperty