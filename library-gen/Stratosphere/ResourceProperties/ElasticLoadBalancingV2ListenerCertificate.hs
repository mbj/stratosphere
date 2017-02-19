{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerCertificate where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticLoadBalancingV2ListenerCertificate.
-- | See 'elasticLoadBalancingV2ListenerCertificate' for a more convenient
-- | constructor.
data ElasticLoadBalancingV2ListenerCertificate =
  ElasticLoadBalancingV2ListenerCertificate
  { _elasticLoadBalancingV2ListenerCertificateCertificateArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerCertificate where
  toJSON ElasticLoadBalancingV2ListenerCertificate{..} =
    object $
    catMaybes
    [ ("CertificateArn" .=) <$> _elasticLoadBalancingV2ListenerCertificateCertificateArn
    ]

instance FromJSON ElasticLoadBalancingV2ListenerCertificate where
  parseJSON (Object obj) =
    ElasticLoadBalancingV2ListenerCertificate <$>
      obj .:? "CertificateArn"
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingV2ListenerCertificate' containing
-- | required fields as arguments.
elasticLoadBalancingV2ListenerCertificate
  :: ElasticLoadBalancingV2ListenerCertificate
elasticLoadBalancingV2ListenerCertificate  =
  ElasticLoadBalancingV2ListenerCertificate
  { _elasticLoadBalancingV2ListenerCertificateCertificateArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html#cfn-elasticloadbalancingv2-listener-certificates-certificatearn
elbvlcCertificateArn :: Lens' ElasticLoadBalancingV2ListenerCertificate (Maybe (Val Text))
elbvlcCertificateArn = lens _elasticLoadBalancingV2ListenerCertificateCertificateArn (\s a -> s { _elasticLoadBalancingV2ListenerCertificateCertificateArn = a })
