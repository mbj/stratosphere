module Stratosphere.ApplicationInsights.Application.AlarmMetricProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AlarmMetricProperty :: Prelude.Type
instance ToResourceProperties AlarmMetricProperty
instance Prelude.Eq AlarmMetricProperty
instance Prelude.Show AlarmMetricProperty
instance JSON.ToJSON AlarmMetricProperty