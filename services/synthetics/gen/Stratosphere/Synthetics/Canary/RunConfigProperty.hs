module Stratosphere.Synthetics.Canary.RunConfigProperty (
        RunConfigProperty(..), mkRunConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RunConfigProperty
  = RunConfigProperty {activeTracing :: (Prelude.Maybe (Value Prelude.Bool)),
                       environmentVariables :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                       memoryInMB :: (Prelude.Maybe (Value Prelude.Integer)),
                       timeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRunConfigProperty :: RunConfigProperty
mkRunConfigProperty
  = RunConfigProperty
      {activeTracing = Prelude.Nothing,
       environmentVariables = Prelude.Nothing,
       memoryInMB = Prelude.Nothing, timeoutInSeconds = Prelude.Nothing}
instance ToResourceProperties RunConfigProperty where
  toResourceProperties RunConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.RunConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActiveTracing" Prelude.<$> activeTracing,
                            (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
                            (JSON..=) "MemoryInMB" Prelude.<$> memoryInMB,
                            (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds])}
instance JSON.ToJSON RunConfigProperty where
  toJSON RunConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActiveTracing" Prelude.<$> activeTracing,
               (JSON..=) "EnvironmentVariables" Prelude.<$> environmentVariables,
               (JSON..=) "MemoryInMB" Prelude.<$> memoryInMB,
               (JSON..=) "TimeoutInSeconds" Prelude.<$> timeoutInSeconds]))
instance Property "ActiveTracing" RunConfigProperty where
  type PropertyType "ActiveTracing" RunConfigProperty = Value Prelude.Bool
  set newValue RunConfigProperty {..}
    = RunConfigProperty {activeTracing = Prelude.pure newValue, ..}
instance Property "EnvironmentVariables" RunConfigProperty where
  type PropertyType "EnvironmentVariables" RunConfigProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue RunConfigProperty {..}
    = RunConfigProperty
        {environmentVariables = Prelude.pure newValue, ..}
instance Property "MemoryInMB" RunConfigProperty where
  type PropertyType "MemoryInMB" RunConfigProperty = Value Prelude.Integer
  set newValue RunConfigProperty {..}
    = RunConfigProperty {memoryInMB = Prelude.pure newValue, ..}
instance Property "TimeoutInSeconds" RunConfigProperty where
  type PropertyType "TimeoutInSeconds" RunConfigProperty = Value Prelude.Integer
  set newValue RunConfigProperty {..}
    = RunConfigProperty {timeoutInSeconds = Prelude.pure newValue, ..}