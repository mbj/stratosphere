module Stratosphere.Batch.JobDefinition.RetryStrategyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RetryStrategyProperty :: Prelude.Type
instance ToResourceProperties RetryStrategyProperty
instance JSON.ToJSON RetryStrategyProperty