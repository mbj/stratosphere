module Stratosphere.ApiGateway.Method.MethodResponseProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MethodResponseProperty :: Prelude.Type
instance ToResourceProperties MethodResponseProperty
instance JSON.ToJSON MethodResponseProperty