module Stratosphere.ApiGateway.Method.MethodResponseProperty (
        MethodResponseProperty(..), mkMethodResponseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MethodResponseProperty
  = MethodResponseProperty {responseModels :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            responseParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Bool))),
                            statusCode :: (Value Prelude.Text)}
mkMethodResponseProperty ::
  Value Prelude.Text -> MethodResponseProperty
mkMethodResponseProperty statusCode
  = MethodResponseProperty
      {statusCode = statusCode, responseModels = Prelude.Nothing,
       responseParameters = Prelude.Nothing}
instance ToResourceProperties MethodResponseProperty where
  toResourceProperties MethodResponseProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Method.MethodResponse",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StatusCode" JSON..= statusCode]
                           (Prelude.catMaybes
                              [(JSON..=) "ResponseModels" Prelude.<$> responseModels,
                               (JSON..=) "ResponseParameters" Prelude.<$> responseParameters]))}
instance JSON.ToJSON MethodResponseProperty where
  toJSON MethodResponseProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StatusCode" JSON..= statusCode]
              (Prelude.catMaybes
                 [(JSON..=) "ResponseModels" Prelude.<$> responseModels,
                  (JSON..=) "ResponseParameters" Prelude.<$> responseParameters])))
instance Property "ResponseModels" MethodResponseProperty where
  type PropertyType "ResponseModels" MethodResponseProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue MethodResponseProperty {..}
    = MethodResponseProperty
        {responseModels = Prelude.pure newValue, ..}
instance Property "ResponseParameters" MethodResponseProperty where
  type PropertyType "ResponseParameters" MethodResponseProperty = Prelude.Map Prelude.Text (Value Prelude.Bool)
  set newValue MethodResponseProperty {..}
    = MethodResponseProperty
        {responseParameters = Prelude.pure newValue, ..}
instance Property "StatusCode" MethodResponseProperty where
  type PropertyType "StatusCode" MethodResponseProperty = Value Prelude.Text
  set newValue MethodResponseProperty {..}
    = MethodResponseProperty {statusCode = newValue, ..}