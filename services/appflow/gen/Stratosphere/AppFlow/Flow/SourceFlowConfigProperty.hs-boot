module Stratosphere.AppFlow.Flow.SourceFlowConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SourceFlowConfigProperty :: Prelude.Type
instance ToResourceProperties SourceFlowConfigProperty
instance JSON.ToJSON SourceFlowConfigProperty