module Stratosphere.ApiGatewayV2.RoutingRule.ActionInvokeApiProperty (
        ActionInvokeApiProperty(..), mkActionInvokeApiProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionInvokeApiProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-actioninvokeapi.html>
    ActionInvokeApiProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-actioninvokeapi.html#cfn-apigatewayv2-routingrule-actioninvokeapi-apiid>
                             apiId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-actioninvokeapi.html#cfn-apigatewayv2-routingrule-actioninvokeapi-stage>
                             stage :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-apigatewayv2-routingrule-actioninvokeapi.html#cfn-apigatewayv2-routingrule-actioninvokeapi-stripbasepath>
                             stripBasePath :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionInvokeApiProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ActionInvokeApiProperty
mkActionInvokeApiProperty apiId stage
  = ActionInvokeApiProperty
      {haddock_workaround_ = (), apiId = apiId, stage = stage,
       stripBasePath = Prelude.Nothing}
instance ToResourceProperties ActionInvokeApiProperty where
  toResourceProperties ActionInvokeApiProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RoutingRule.ActionInvokeApi",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ApiId" JSON..= apiId, "Stage" JSON..= stage]
                           (Prelude.catMaybes
                              [(JSON..=) "StripBasePath" Prelude.<$> stripBasePath]))}
instance JSON.ToJSON ActionInvokeApiProperty where
  toJSON ActionInvokeApiProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ApiId" JSON..= apiId, "Stage" JSON..= stage]
              (Prelude.catMaybes
                 [(JSON..=) "StripBasePath" Prelude.<$> stripBasePath])))
instance Property "ApiId" ActionInvokeApiProperty where
  type PropertyType "ApiId" ActionInvokeApiProperty = Value Prelude.Text
  set newValue ActionInvokeApiProperty {..}
    = ActionInvokeApiProperty {apiId = newValue, ..}
instance Property "Stage" ActionInvokeApiProperty where
  type PropertyType "Stage" ActionInvokeApiProperty = Value Prelude.Text
  set newValue ActionInvokeApiProperty {..}
    = ActionInvokeApiProperty {stage = newValue, ..}
instance Property "StripBasePath" ActionInvokeApiProperty where
  type PropertyType "StripBasePath" ActionInvokeApiProperty = Value Prelude.Bool
  set newValue ActionInvokeApiProperty {..}
    = ActionInvokeApiProperty
        {stripBasePath = Prelude.pure newValue, ..}