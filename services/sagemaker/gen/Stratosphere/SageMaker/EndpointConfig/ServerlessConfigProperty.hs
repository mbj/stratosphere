module Stratosphere.SageMaker.EndpointConfig.ServerlessConfigProperty (
        ServerlessConfigProperty(..), mkServerlessConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServerlessConfigProperty
  = ServerlessConfigProperty {maxConcurrency :: (Value Prelude.Integer),
                              memorySizeInMB :: (Value Prelude.Integer)}
mkServerlessConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> ServerlessConfigProperty
mkServerlessConfigProperty maxConcurrency memorySizeInMB
  = ServerlessConfigProperty
      {maxConcurrency = maxConcurrency, memorySizeInMB = memorySizeInMB}
instance ToResourceProperties ServerlessConfigProperty where
  toResourceProperties ServerlessConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.ServerlessConfig",
         properties = ["MaxConcurrency" JSON..= maxConcurrency,
                       "MemorySizeInMB" JSON..= memorySizeInMB]}
instance JSON.ToJSON ServerlessConfigProperty where
  toJSON ServerlessConfigProperty {..}
    = JSON.object
        ["MaxConcurrency" JSON..= maxConcurrency,
         "MemorySizeInMB" JSON..= memorySizeInMB]
instance Property "MaxConcurrency" ServerlessConfigProperty where
  type PropertyType "MaxConcurrency" ServerlessConfigProperty = Value Prelude.Integer
  set newValue ServerlessConfigProperty {..}
    = ServerlessConfigProperty {maxConcurrency = newValue, ..}
instance Property "MemorySizeInMB" ServerlessConfigProperty where
  type PropertyType "MemorySizeInMB" ServerlessConfigProperty = Value Prelude.Integer
  set newValue ServerlessConfigProperty {..}
    = ServerlessConfigProperty {memorySizeInMB = newValue, ..}