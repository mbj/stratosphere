module Stratosphere.ElasticLoadBalancingV2.ListenerRule.ActionProperty (
        module Exports, ActionProperty(..), mkActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.AuthenticateCognitoConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.AuthenticateOidcConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.FixedResponseConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.ForwardConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerRule.RedirectConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ActionProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-action.html>
    ActionProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-action.html#cfn-elasticloadbalancingv2-listenerrule-action-authenticatecognitoconfig>
                    authenticateCognitoConfig :: (Prelude.Maybe AuthenticateCognitoConfigProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-action.html#cfn-elasticloadbalancingv2-listenerrule-action-authenticateoidcconfig>
                    authenticateOidcConfig :: (Prelude.Maybe AuthenticateOidcConfigProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-action.html#cfn-elasticloadbalancingv2-listenerrule-action-fixedresponseconfig>
                    fixedResponseConfig :: (Prelude.Maybe FixedResponseConfigProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-action.html#cfn-elasticloadbalancingv2-listenerrule-action-forwardconfig>
                    forwardConfig :: (Prelude.Maybe ForwardConfigProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-action.html#cfn-elasticloadbalancingv2-listenerrule-action-order>
                    order :: (Prelude.Maybe (Value Prelude.Integer)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-action.html#cfn-elasticloadbalancingv2-listenerrule-action-redirectconfig>
                    redirectConfig :: (Prelude.Maybe RedirectConfigProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-action.html#cfn-elasticloadbalancingv2-listenerrule-action-targetgrouparn>
                    targetGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-action.html#cfn-elasticloadbalancingv2-listenerrule-action-type>
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkActionProperty :: Value Prelude.Text -> ActionProperty
mkActionProperty type'
  = ActionProperty
      {type' = type', authenticateCognitoConfig = Prelude.Nothing,
       authenticateOidcConfig = Prelude.Nothing,
       fixedResponseConfig = Prelude.Nothing,
       forwardConfig = Prelude.Nothing, order = Prelude.Nothing,
       redirectConfig = Prelude.Nothing, targetGroupArn = Prelude.Nothing}
instance ToResourceProperties ActionProperty where
  toResourceProperties ActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.Action",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "AuthenticateCognitoConfig"
                                 Prelude.<$> authenticateCognitoConfig,
                               (JSON..=) "AuthenticateOidcConfig"
                                 Prelude.<$> authenticateOidcConfig,
                               (JSON..=) "FixedResponseConfig" Prelude.<$> fixedResponseConfig,
                               (JSON..=) "ForwardConfig" Prelude.<$> forwardConfig,
                               (JSON..=) "Order" Prelude.<$> order,
                               (JSON..=) "RedirectConfig" Prelude.<$> redirectConfig,
                               (JSON..=) "TargetGroupArn" Prelude.<$> targetGroupArn]))}
instance JSON.ToJSON ActionProperty where
  toJSON ActionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "AuthenticateCognitoConfig"
                    Prelude.<$> authenticateCognitoConfig,
                  (JSON..=) "AuthenticateOidcConfig"
                    Prelude.<$> authenticateOidcConfig,
                  (JSON..=) "FixedResponseConfig" Prelude.<$> fixedResponseConfig,
                  (JSON..=) "ForwardConfig" Prelude.<$> forwardConfig,
                  (JSON..=) "Order" Prelude.<$> order,
                  (JSON..=) "RedirectConfig" Prelude.<$> redirectConfig,
                  (JSON..=) "TargetGroupArn" Prelude.<$> targetGroupArn])))
instance Property "AuthenticateCognitoConfig" ActionProperty where
  type PropertyType "AuthenticateCognitoConfig" ActionProperty = AuthenticateCognitoConfigProperty
  set newValue ActionProperty {..}
    = ActionProperty
        {authenticateCognitoConfig = Prelude.pure newValue, ..}
instance Property "AuthenticateOidcConfig" ActionProperty where
  type PropertyType "AuthenticateOidcConfig" ActionProperty = AuthenticateOidcConfigProperty
  set newValue ActionProperty {..}
    = ActionProperty
        {authenticateOidcConfig = Prelude.pure newValue, ..}
instance Property "FixedResponseConfig" ActionProperty where
  type PropertyType "FixedResponseConfig" ActionProperty = FixedResponseConfigProperty
  set newValue ActionProperty {..}
    = ActionProperty {fixedResponseConfig = Prelude.pure newValue, ..}
instance Property "ForwardConfig" ActionProperty where
  type PropertyType "ForwardConfig" ActionProperty = ForwardConfigProperty
  set newValue ActionProperty {..}
    = ActionProperty {forwardConfig = Prelude.pure newValue, ..}
instance Property "Order" ActionProperty where
  type PropertyType "Order" ActionProperty = Value Prelude.Integer
  set newValue ActionProperty {..}
    = ActionProperty {order = Prelude.pure newValue, ..}
instance Property "RedirectConfig" ActionProperty where
  type PropertyType "RedirectConfig" ActionProperty = RedirectConfigProperty
  set newValue ActionProperty {..}
    = ActionProperty {redirectConfig = Prelude.pure newValue, ..}
instance Property "TargetGroupArn" ActionProperty where
  type PropertyType "TargetGroupArn" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty {targetGroupArn = Prelude.pure newValue, ..}
instance Property "Type" ActionProperty where
  type PropertyType "Type" ActionProperty = Value Prelude.Text
  set newValue ActionProperty {..}
    = ActionProperty {type' = newValue, ..}