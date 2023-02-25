module Stratosphere.Events.Rule.BatchParametersProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BatchParametersProperty :: Prelude.Type
instance ToResourceProperties BatchParametersProperty
instance JSON.ToJSON BatchParametersProperty