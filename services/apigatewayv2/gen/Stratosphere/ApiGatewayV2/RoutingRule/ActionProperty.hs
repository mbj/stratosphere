module Stratosphere.ApiGatewayV2.RoutingRule.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.RoutingRule.ActionInvokeApiProperty as Exports
import Stratosphere.ResourceProperties
data ActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-action.html>
    ActionProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-action.html#cfn-apigatewayv2-routingrule-action-invokeapi>
                    invokeApi :: ActionInvokeApiProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: ActionInvokeApiProperty -> ActionProperty
mkActionProperty invokeApi
  = ActionProperty {haddock_workaround_ = (), invokeApi = invokeApi}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RoutingRule.Action",
         supportsTags = Prelude.False,
         properties = ["InvokeApi" JSON..= invokeApi]}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object ["InvokeApi" JSON..= invokeApi]
instance Property "InvokeApi" ActionProperty where
  type PropertyType "InvokeApi" ActionProperty = ActionInvokeApiProperty
  set newValue ActionProperty {..}
    = ActionProperty {invokeApi = newValue, ..}