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
  = ListenerCertificate {certificates :: [CertificateProperty],
                         listenerArn :: (Value Prelude.Text)}
mkListenerCertificate ::
  [CertificateProperty] -> Value Prelude.Text -> ListenerCertificate
mkListenerCertificate certificates listenerArn
  = ListenerCertificate
      {certificates = certificates, listenerArn = listenerArn}
instance ToResourceProperties ListenerCertificate where
  toResourceProperties ListenerCertificate {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerCertificate",
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