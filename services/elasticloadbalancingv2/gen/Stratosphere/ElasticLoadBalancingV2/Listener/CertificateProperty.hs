module Stratosphere.ElasticLoadBalancingV2.Listener.CertificateProperty (
        CertificateProperty(..), mkCertificateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CertificateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificate.html>
    CertificateProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificate.html#cfn-elasticloadbalancingv2-listener-certificate-certificatearn>
                         certificateArn :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCertificateProperty :: CertificateProperty
mkCertificateProperty
  = CertificateProperty
      {haddock_workaround_ = (), certificateArn = Prelude.Nothing}
instance ToResourceProperties CertificateProperty where
  toResourceProperties CertificateProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::Listener.Certificate",
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
  set newValue CertificateProperty {..}
    = CertificateProperty {certificateArn = Prelude.pure newValue, ..}