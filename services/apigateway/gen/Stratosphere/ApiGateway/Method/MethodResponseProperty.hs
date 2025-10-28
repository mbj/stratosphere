module Stratosphere.ApiGateway.Method.MethodResponseProperty (
        MethodResponseProperty(..), mkMethodResponseProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MethodResponseProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-methodresponse.html>
    MethodResponseProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responsemodels>
                            responseModels :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-responseparameters>
                            responseParameters :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text))),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigateway-method-methodresponse.html#cfn-apigateway-method-methodresponse-statuscode>
                            statusCode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMethodResponseProperty ::
  Value Prelude.Text -> MethodResponseProperty
mkMethodResponseProperty statusCode
  = MethodResponseProperty
      {haddock_workaround_ = (), statusCode = statusCode,
       responseModels = Prelude.Nothing,
       responseParameters = Prelude.Nothing}
instance ToResourceProperties MethodResponseProperty where
  toResourceProperties MethodResponseProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGateway::Method.MethodResponse",
         supportsTags = Prelude.False,
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
  type PropertyType "ResponseParameters" MethodResponseProperty = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue MethodResponseProperty {..}
    = MethodResponseProperty
        {responseParameters = Prelude.pure newValue, ..}
instance Property "StatusCode" MethodResponseProperty where
  type PropertyType "StatusCode" MethodResponseProperty = Value Prelude.Text
  set newValue MethodResponseProperty {..}
    = MethodResponseProperty {statusCode = newValue, ..}