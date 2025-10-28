module Stratosphere.ElasticLoadBalancingV2.ListenerCertificate.CertificateProperty (
        CertificateProperty(..), mkCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html>
    CertificateProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html#cfn-elasticloadbalancingv2-listener-certificates-certificatearn>
                         certificateArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateProperty :: CertificateProperty
mkCertificateProperty
  = CertificateProperty {certificateArn = Prelude.Nothing}
instance ToResourceProperties CertificateProperty where
  toResourceProperties CertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::ListenerCertificate.Certificate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CertificateArn" Prelude.<$> certificateArn])}
instance JSON.ToJSON CertificateProperty where
  toJSON CertificateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CertificateArn" Prelude.<$> certificateArn]))
instance Property "CertificateArn" CertificateProperty where
  type PropertyType "CertificateArn" CertificateProperty = Value Prelude.Text
  set newValue CertificateProperty {}
    = CertificateProperty {certificateArn = Prelude.pure newValue, ..}