{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html

module Stratosphere.Resources.ElasticLoadBalancingV2ListenerCertificateResource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerCertificateCertificate

-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerCertificateResource. See
-- 'elasticLoadBalancingV2ListenerCertificateResource' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerCertificateResource =
  ElasticLoadBalancingV2ListenerCertificateResource
  { _elasticLoadBalancingV2ListenerCertificateResourceCertificates :: [ElasticLoadBalancingV2ListenerCertificateCertificate]
  , _elasticLoadBalancingV2ListenerCertificateResourceListenerArn :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties ElasticLoadBalancingV2ListenerCertificateResource where
  toResourceProperties ElasticLoadBalancingV2ListenerCertificateResource{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::ElasticLoadBalancingV2::ListenerCertificate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ (Just . ("Certificates",) . toJSON) _elasticLoadBalancingV2ListenerCertificateResourceCertificates
        , (Just . ("ListenerArn",) . toJSON) _elasticLoadBalancingV2ListenerCertificateResourceListenerArn
        ]
    }

-- | Constructor for 'ElasticLoadBalancingV2ListenerCertificateResource'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerCertificateResource
  :: [ElasticLoadBalancingV2ListenerCertificateCertificate] -- ^ 'elbvlcrCertificates'
  -> Val Text -- ^ 'elbvlcrListenerArn'
  -> ElasticLoadBalancingV2ListenerCertificateResource
elasticLoadBalancingV2ListenerCertificateResource certificatesarg listenerArnarg =
  ElasticLoadBalancingV2ListenerCertificateResource
  { _elasticLoadBalancingV2ListenerCertificateResourceCertificates = certificatesarg
  , _elasticLoadBalancingV2ListenerCertificateResourceListenerArn = listenerArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-certificates
elbvlcrCertificates :: Lens' ElasticLoadBalancingV2ListenerCertificateResource [ElasticLoadBalancingV2ListenerCertificateCertificate]
elbvlcrCertificates = lens _elasticLoadBalancingV2ListenerCertificateResourceCertificates (\s a -> s { _elasticLoadBalancingV2ListenerCertificateResourceCertificates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-listenerarn
elbvlcrListenerArn :: Lens' ElasticLoadBalancingV2ListenerCertificateResource (Val Text)
elbvlcrListenerArn = lens _elasticLoadBalancingV2ListenerCertificateResourceListenerArn (\s a -> s { _elasticLoadBalancingV2ListenerCertificateResourceListenerArn = a })
