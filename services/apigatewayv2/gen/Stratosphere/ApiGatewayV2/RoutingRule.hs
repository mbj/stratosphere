module Stratosphere.ApiGatewayV2.RoutingRule (
        module Exports, RoutingRule(..), mkRoutingRule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.RoutingRule.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.ApiGatewayV2.RoutingRule.ConditionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RoutingRule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routingrule.html>
    RoutingRule {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routingrule.html#cfn-apigatewayv2-routingrule-actions>
                 actions :: [ActionProperty],
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routingrule.html#cfn-apigatewayv2-routingrule-conditions>
                 conditions :: [ConditionProperty],
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routingrule.html#cfn-apigatewayv2-routingrule-domainnamearn>
                 domainNameArn :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-apigatewayv2-routingrule.html#cfn-apigatewayv2-routingrule-priority>
                 priority :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRoutingRule ::
  [ActionProperty]
  -> [ConditionProperty]
     -> Value Prelude.Text -> Value Prelude.Integer -> RoutingRule
mkRoutingRule actions conditions domainNameArn priority
  = RoutingRule
      {haddock_workaround_ = (), actions = actions,
       conditions = conditions, domainNameArn = domainNameArn,
       priority = priority}
instance ToResourceProperties RoutingRule where
  toResourceProperties RoutingRule {..}
    = ResourceProperties
        {awsType = "AWS::ApiGatewayV2::RoutingRule",
         supportsTags = Prelude.False,
         properties = ["Actions" JSON..= actions,
                       "Conditions" JSON..= conditions,
                       "DomainNameArn" JSON..= domainNameArn,
                       "Priority" JSON..= priority]}
instance JSON.ToJSON RoutingRule where
  toJSON RoutingRule {..}
    = JSON.object
        ["Actions" JSON..= actions, "Conditions" JSON..= conditions,
         "DomainNameArn" JSON..= domainNameArn, "Priority" JSON..= priority]
instance Property "Actions" RoutingRule where
  type PropertyType "Actions" RoutingRule = [ActionProperty]
  set newValue RoutingRule {..}
    = RoutingRule {actions = newValue, ..}
instance Property "Conditions" RoutingRule where
  type PropertyType "Conditions" RoutingRule = [ConditionProperty]
  set newValue RoutingRule {..}
    = RoutingRule {conditions = newValue, ..}
instance Property "DomainNameArn" RoutingRule where
  type PropertyType "DomainNameArn" RoutingRule = Value Prelude.Text
  set newValue RoutingRule {..}
    = RoutingRule {domainNameArn = newValue, ..}
instance Property "Priority" RoutingRule where
  type PropertyType "Priority" RoutingRule = Value Prelude.Integer
  set newValue RoutingRule {..}
    = RoutingRule {priority = newValue, ..}