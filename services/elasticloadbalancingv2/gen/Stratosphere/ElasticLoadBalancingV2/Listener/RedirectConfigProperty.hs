module Stratosphere.ElasticLoadBalancingV2.Listener.RedirectConfigProperty (
        RedirectConfigProperty(..), mkRedirectConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedirectConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html>
    RedirectConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-host>
                            host :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-path>
                            path :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-port>
                            port :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-protocol>
                            protocol :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-query>
                            query :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-redirectconfig.html#cfn-elasticloadbalancingv2-listener-redirectconfig-statuscode>
                            statusCode :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedirectConfigProperty ::
  Value Prelude.Text -> RedirectConfigProperty
mkRedirectConfigProperty statusCode
  = RedirectConfigProperty
      {haddock_workaround_ = (), statusCode = statusCode,
       host = Prelude.Nothing, path = Prelude.Nothing,
       port = Prelude.Nothing, protocol = Prelude.Nothing,
       query = Prelude.Nothing}
instance ToResourceProperties RedirectConfigProperty where
  toResourceProperties RedirectConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::Listener.RedirectConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["StatusCode" JSON..= statusCode]
                           (Prelude.catMaybes
                              [(JSON..=) "Host" Prelude.<$> host,
                               (JSON..=) "Path" Prelude.<$> path,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "Protocol" Prelude.<$> protocol,
                               (JSON..=) "Query" Prelude.<$> query]))}
instance JSON.ToJSON RedirectConfigProperty where
  toJSON RedirectConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["StatusCode" JSON..= statusCode]
              (Prelude.catMaybes
                 [(JSON..=) "Host" Prelude.<$> host,
                  (JSON..=) "Path" Prelude.<$> path,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "Protocol" Prelude.<$> protocol,
                  (JSON..=) "Query" Prelude.<$> query])))
instance Property "Host" RedirectConfigProperty where
  type PropertyType "Host" RedirectConfigProperty = Value Prelude.Text
  set newValue RedirectConfigProperty {..}
    = RedirectConfigProperty {host = Prelude.pure newValue, ..}
instance Property "Path" RedirectConfigProperty where
  type PropertyType "Path" RedirectConfigProperty = Value Prelude.Text
  set newValue RedirectConfigProperty {..}
    = RedirectConfigProperty {path = Prelude.pure newValue, ..}
instance Property "Port" RedirectConfigProperty where
  type PropertyType "Port" RedirectConfigProperty = Value Prelude.Text
  set newValue RedirectConfigProperty {..}
    = RedirectConfigProperty {port = Prelude.pure newValue, ..}
instance Property "Protocol" RedirectConfigProperty where
  type PropertyType "Protocol" RedirectConfigProperty = Value Prelude.Text
  set newValue RedirectConfigProperty {..}
    = RedirectConfigProperty {protocol = Prelude.pure newValue, ..}
instance Property "Query" RedirectConfigProperty where
  type PropertyType "Query" RedirectConfigProperty = Value Prelude.Text
  set newValue RedirectConfigProperty {..}
    = RedirectConfigProperty {query = Prelude.pure newValue, ..}
instance Property "StatusCode" RedirectConfigProperty where
  type PropertyType "StatusCode" RedirectConfigProperty = Value Prelude.Text
  set newValue RedirectConfigProperty {..}
    = RedirectConfigProperty {statusCode = newValue, ..}