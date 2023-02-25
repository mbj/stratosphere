module Stratosphere.CloudFront.Function.FunctionConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FunctionConfigProperty :: Prelude.Type
instance ToResourceProperties FunctionConfigProperty
instance JSON.ToJSON FunctionConfigProperty