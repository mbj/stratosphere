module Stratosphere.IoTFleetWise.Campaign.TimeBasedSignalFetchConfigProperty (
        TimeBasedSignalFetchConfigProperty(..),
        mkTimeBasedSignalFetchConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimeBasedSignalFetchConfigProperty
  = TimeBasedSignalFetchConfigProperty {executionFrequencyMs :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimeBasedSignalFetchConfigProperty ::
  Value Prelude.Double -> TimeBasedSignalFetchConfigProperty
mkTimeBasedSignalFetchConfigProperty executionFrequencyMs
  = TimeBasedSignalFetchConfigProperty
      {executionFrequencyMs = executionFrequencyMs}
instance ToResourceProperties TimeBasedSignalFetchConfigProperty where
  toResourceProperties TimeBasedSignalFetchConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTFleetWise::Campaign.TimeBasedSignalFetchConfig",
         supportsTags = Prelude.False,
         properties = ["ExecutionFrequencyMs" JSON..= executionFrequencyMs]}
instance JSON.ToJSON TimeBasedSignalFetchConfigProperty where
  toJSON TimeBasedSignalFetchConfigProperty {..}
    = JSON.object ["ExecutionFrequencyMs" JSON..= executionFrequencyMs]
instance Property "ExecutionFrequencyMs" TimeBasedSignalFetchConfigProperty where
  type PropertyType "ExecutionFrequencyMs" TimeBasedSignalFetchConfigProperty = Value Prelude.Double
  set newValue TimeBasedSignalFetchConfigProperty {}
    = TimeBasedSignalFetchConfigProperty
        {executionFrequencyMs = newValue, ..}