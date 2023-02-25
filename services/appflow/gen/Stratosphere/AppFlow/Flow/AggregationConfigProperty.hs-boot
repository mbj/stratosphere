module Stratosphere.AppFlow.Flow.AggregationConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AggregationConfigProperty :: Prelude.Type
instance ToResourceProperties AggregationConfigProperty
instance JSON.ToJSON AggregationConfigProperty