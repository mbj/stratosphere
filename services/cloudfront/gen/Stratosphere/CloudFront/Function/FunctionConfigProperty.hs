module Stratosphere.CloudFront.Function.FunctionConfigProperty (
        FunctionConfigProperty(..), mkFunctionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FunctionConfigProperty
  = FunctionConfigProperty {comment :: (Value Prelude.Text),
                            runtime :: (Value Prelude.Text)}
mkFunctionConfigProperty ::
  Value Prelude.Text -> Value Prelude.Text -> FunctionConfigProperty
mkFunctionConfigProperty comment runtime
  = FunctionConfigProperty {comment = comment, runtime = runtime}
instance ToResourceProperties FunctionConfigProperty where
  toResourceProperties FunctionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudFront::Function.FunctionConfig",
         supportsTags = Prelude.False,
         properties = ["Comment" JSON..= comment,
                       "Runtime" JSON..= runtime]}
instance JSON.ToJSON FunctionConfigProperty where
  toJSON FunctionConfigProperty {..}
    = JSON.object
        ["Comment" JSON..= comment, "Runtime" JSON..= runtime]
instance Property "Comment" FunctionConfigProperty where
  type PropertyType "Comment" FunctionConfigProperty = Value Prelude.Text
  set newValue FunctionConfigProperty {..}
    = FunctionConfigProperty {comment = newValue, ..}
instance Property "Runtime" FunctionConfigProperty where
  type PropertyType "Runtime" FunctionConfigProperty = Value Prelude.Text
  set newValue FunctionConfigProperty {..}
    = FunctionConfigProperty {runtime = newValue, ..}