module Stratosphere.RefactorSpaces.Application.ApiGatewayProxyInputProperty (
        ApiGatewayProxyInputProperty(..), mkApiGatewayProxyInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiGatewayProxyInputProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-application-apigatewayproxyinput.html>
    ApiGatewayProxyInputProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-application-apigatewayproxyinput.html#cfn-refactorspaces-application-apigatewayproxyinput-endpointtype>
                                  endpointType :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-refactorspaces-application-apigatewayproxyinput.html#cfn-refactorspaces-application-apigatewayproxyinput-stagename>
                                  stageName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkApiGatewayProxyInputProperty :: ApiGatewayProxyInputProperty
mkApiGatewayProxyInputProperty
  = ApiGatewayProxyInputProperty
      {endpointType = Prelude.Nothing, stageName = Prelude.Nothing}
instance ToResourceProperties ApiGatewayProxyInputProperty where
  toResourceProperties ApiGatewayProxyInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Application.ApiGatewayProxyInput",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EndpointType" Prelude.<$> endpointType,
                            (JSON..=) "StageName" Prelude.<$> stageName])}
instance JSON.ToJSON ApiGatewayProxyInputProperty where
  toJSON ApiGatewayProxyInputProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EndpointType" Prelude.<$> endpointType,
               (JSON..=) "StageName" Prelude.<$> stageName]))
instance Property "EndpointType" ApiGatewayProxyInputProperty where
  type PropertyType "EndpointType" ApiGatewayProxyInputProperty = Value Prelude.Text
  set newValue ApiGatewayProxyInputProperty {..}
    = ApiGatewayProxyInputProperty
        {endpointType = Prelude.pure newValue, ..}
instance Property "StageName" ApiGatewayProxyInputProperty where
  type PropertyType "StageName" ApiGatewayProxyInputProperty = Value Prelude.Text
  set newValue ApiGatewayProxyInputProperty {..}
    = ApiGatewayProxyInputProperty
        {stageName = Prelude.pure newValue, ..}