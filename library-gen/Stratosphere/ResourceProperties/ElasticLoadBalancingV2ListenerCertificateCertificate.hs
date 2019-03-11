{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerCertificateCertificate where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerCertificateCertificate. See
-- 'elasticLoadBalancingV2ListenerCertificateCertificate' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerCertificateCertificate =
  ElasticLoadBalancingV2ListenerCertificateCertificate
  { _elasticLoadBalancingV2ListenerCertificateCertificateCertificateArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerCertificateCertificate where
  toJSON ElasticLoadBalancingV2ListenerCertificateCertificate{..} =
    object $
    catMaybes
    [ fmap (("CertificateArn",) . toJSON) _elasticLoadBalancingV2ListenerCertificateCertificateCertificateArn
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerCertificateCertificate'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerCertificateCertificate
  :: ElasticLoadBalancingV2ListenerCertificateCertificate
elasticLoadBalancingV2ListenerCertificateCertificate  =
  ElasticLoadBalancingV2ListenerCertificateCertificate
  { _elasticLoadBalancingV2ListenerCertificateCertificateCertificateArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html#cfn-elasticloadbalancingv2-listener-certificates-certificatearn
elbvlccCertificateArn :: Lens' ElasticLoadBalancingV2ListenerCertificateCertificate (Maybe (Val Text))
elbvlccCertificateArn = lens _elasticLoadBalancingV2ListenerCertificateCertificateCertificateArn (\s a -> s { _elasticLoadBalancingV2ListenerCertificateCertificateCertificateArn = a })
