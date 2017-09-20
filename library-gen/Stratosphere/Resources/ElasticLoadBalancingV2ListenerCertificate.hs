{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html

module Stratosphere.Resources.ElasticLoadBalancingV2ListenerCertificate where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerCertificateCertificate

-- | Full data type definition for ElasticLoadBalancingV2ListenerCertificate.
-- See 'elasticLoadBalancingV2ListenerCertificate' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerCertificate =
  ElasticLoadBalancingV2ListenerCertificate
  { _elasticLoadBalancingV2ListenerCertificateCertificates :: [ElasticLoadBalancingV2ListenerCertificateCertificate]
  , _elasticLoadBalancingV2ListenerCertificateListenerArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerCertificate where
  toJSON ElasticLoadBalancingV2ListenerCertificate{..} =
    object $
    catMaybes
    [ (Just . ("Certificates",) . toJSON) _elasticLoadBalancingV2ListenerCertificateCertificates
    , (Just . ("ListenerArn",) . toJSON) _elasticLoadBalancingV2ListenerCertificateListenerArn
    ]

instance FromJSON ElasticLoadBalancingV2ListenerCertificate where
  parseJSON (Object obj) =
    ElasticLoadBalancingV2ListenerCertificate <$>
      (obj .: "Certificates") <*>
      (obj .: "ListenerArn")
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingV2ListenerCertificate' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerCertificate
  :: [ElasticLoadBalancingV2ListenerCertificateCertificate] -- ^ 'elbvlcCertificates'
  -> Val Text -- ^ 'elbvlcListenerArn'
  -> ElasticLoadBalancingV2ListenerCertificate
elasticLoadBalancingV2ListenerCertificate certificatesarg listenerArnarg =
  ElasticLoadBalancingV2ListenerCertificate
  { _elasticLoadBalancingV2ListenerCertificateCertificates = certificatesarg
  , _elasticLoadBalancingV2ListenerCertificateListenerArn = listenerArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-certificates
elbvlcCertificates :: Lens' ElasticLoadBalancingV2ListenerCertificate [ElasticLoadBalancingV2ListenerCertificateCertificate]
elbvlcCertificates = lens _elasticLoadBalancingV2ListenerCertificateCertificates (\s a -> s { _elasticLoadBalancingV2ListenerCertificateCertificates = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html#cfn-elasticloadbalancingv2-listenercertificate-listenerarn
elbvlcListenerArn :: Lens' ElasticLoadBalancingV2ListenerCertificate (Val Text)
elbvlcListenerArn = lens _elasticLoadBalancingV2ListenerCertificateListenerArn (\s a -> s { _elasticLoadBalancingV2ListenerCertificateListenerArn = a })
