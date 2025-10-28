module Stratosphere.ElasticLoadBalancingV2.ListenerRule.FixedResponseConfigProperty (
        FixedResponseConfigProperty(..), mkFixedResponseConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FixedResponseConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html>
    FixedResponseConfigProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listenerrule-fixedresponseconfig-contenttype>
                                 contentType :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listenerrule-fixedresponseconfig-messagebody>
                                 messageBody :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listenerrule-fixedresponseconfig-statuscode>
                                 statusCode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFixedResponseConfigProperty ::
  Value Prelude.Text -> FixedResponseConfigProperty
mkFixedResponseConfigProperty statusCode
  = FixedResponseConfigProperty
      {haddock_workaround_ = (), statusCode = statusCode,
       contentType = Prelude.Nothing, messageBody = Prelude.Nothing}
instance ToResourceProperties FixedResponseConfigProperty where
  toResourceProperties FixedResponseConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerRule.FixedResponseConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StatusCode" JSON..= statusCode]
                           (Prelude.catMaybes
                              [(JSON..=) "ContentType" Prelude.<$> contentType,
                               (JSON..=) "MessageBody" Prelude.<$> messageBody]))}
instance JSON.ToJSON FixedResponseConfigProperty where
  toJSON FixedResponseConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StatusCode" JSON..= statusCode]
              (Prelude.catMaybes
                 [(JSON..=) "ContentType" Prelude.<$> contentType,
                  (JSON..=) "MessageBody" Prelude.<$> messageBody])))
instance Property "ContentType" FixedResponseConfigProperty where
  type PropertyType "ContentType" FixedResponseConfigProperty = Value Prelude.Text
  set newValue FixedResponseConfigProperty {..}
    = FixedResponseConfigProperty
        {contentType = Prelude.pure newValue, ..}
instance Property "MessageBody" FixedResponseConfigProperty where
  type PropertyType "MessageBody" FixedResponseConfigProperty = Value Prelude.Text
  set newValue FixedResponseConfigProperty {..}
    = FixedResponseConfigProperty
        {messageBody = Prelude.pure newValue, ..}
instance Property "StatusCode" FixedResponseConfigProperty where
  type PropertyType "StatusCode" FixedResponseConfigProperty = Value Prelude.Text
  set newValue FixedResponseConfigProperty {..}
    = FixedResponseConfigProperty {statusCode = newValue, ..}