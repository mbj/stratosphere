{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-certificates.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerCertificate where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ElasticLoadBalancingV2ListenerCertificate.
-- | See 'elasticLoadBalancingV2ListenerCertificate' for a more convenient
-- | constructor.
data ElasticLoadBalancingV2ListenerCertificate =
  ElasticLoadBalancingV2ListenerCertificate
  { _elasticLoadBalancingV2ListenerCertificateCertificateArn :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON ElasticLoadBalancingV2ListenerCertificate where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingV2ListenerCertificate where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 42, omitNothingFields = True }

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
