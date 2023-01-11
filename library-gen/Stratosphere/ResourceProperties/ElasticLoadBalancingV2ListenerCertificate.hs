
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerCertificate where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for ElasticLoadBalancingV2ListenerCertificate.
-- See 'elasticLoadBalancingV2ListenerCertificate' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerCertificate =
  ElasticLoadBalancingV2ListenerCertificate
  { _elasticLoadBalancingV2ListenerCertificateCertificateArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerCertificate where
  toJSON ElasticLoadBalancingV2ListenerCertificate{..} =
    object $
    catMaybes
    [ fmap (("CertificateArn",) . toJSON) _elasticLoadBalancingV2ListenerCertificateCertificateArn
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerCertificate' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerCertificate
  :: ElasticLoadBalancingV2ListenerCertificate
elasticLoadBalancingV2ListenerCertificate  =
  ElasticLoadBalancingV2ListenerCertificate
  { _elasticLoadBalancingV2ListenerCertificateCertificateArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html#cfn-elasticloadbalancingv2-listener-certificates-certificatearn
elbvlcCertificateArn :: Lens' ElasticLoadBalancingV2ListenerCertificate (Maybe (Val Text))
elbvlcCertificateArn = lens _elasticLoadBalancingV2ListenerCertificateCertificateArn (\s a -> s { _elasticLoadBalancingV2ListenerCertificateCertificateArn = a })
