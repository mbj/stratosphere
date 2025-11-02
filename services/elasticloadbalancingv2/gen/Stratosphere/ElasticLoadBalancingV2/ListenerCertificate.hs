module Stratosphere.ElasticLoadBalancingV2.ListenerCertificate (
        module Exports, ListenerCertificate(..), mkListenerCertificate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.ListenerCertificate.CertificateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListenerCertificate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html>
    ListenerCertificate {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-certificates>
                         certificates :: [CertificateProperty],
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-listenerarn>
                         listenerArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenerCertificate ::
  [CertificateProperty] -> Value Prelude.Text -> ListenerCertificate
mkListenerCertificate certificates listenerArn
  = ListenerCertificate
      {haddock_workaround_ = (), certificates = certificates,
       listenerArn = listenerArn}
instance ToResourceProperties ListenerCertificate where
  toResourceProperties ListenerCertificate {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerCertificate",
         supportsTags = Prelude.False,
         properties = ["Certificates" JSON..= certificates,
                       "ListenerArn" JSON..= listenerArn]}
instance JSON.ToJSON ListenerCertificate where
  toJSON ListenerCertificate {..}
    = JSON.object
        ["Certificates" JSON..= certificates,
         "ListenerArn" JSON..= listenerArn]
instance Property "Certificates" ListenerCertificate where
  type PropertyType "Certificates" ListenerCertificate = [CertificateProperty]
  set newValue ListenerCertificate {..}
    = ListenerCertificate {certificates = newValue, ..}
instance Property "ListenerArn" ListenerCertificate where
  type PropertyType "ListenerArn" ListenerCertificate = Value Prelude.Text
  set newValue ListenerCertificate {..}
    = ListenerCertificate {listenerArn = newValue, ..}