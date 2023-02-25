module Stratosphere.RefactorSpaces.Application.ApiGatewayProxyInputProperty (
        ApiGatewayProxyInputProperty(..), mkApiGatewayProxyInputProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ApiGatewayProxyInputProperty
  = ApiGatewayProxyInputProperty {endpointType :: (Prelude.Maybe (Value Prelude.Text)),
                                  stageName :: (Prelude.Maybe (Value Prelude.Text))}
mkApiGatewayProxyInputProperty :: ApiGatewayProxyInputProperty
mkApiGatewayProxyInputProperty
  = ApiGatewayProxyInputProperty
      {endpointType = Prelude.Nothing, stageName = Prelude.Nothing}
instance ToResourceProperties ApiGatewayProxyInputProperty where
  toResourceProperties ApiGatewayProxyInputProperty {..}
    = ResourceProperties
        {awsType = "AWS::RefactorSpaces::Application.ApiGatewayProxyInput",
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