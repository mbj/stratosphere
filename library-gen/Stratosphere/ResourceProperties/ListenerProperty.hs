{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The Listener property is an embedded property of the
-- AWS::ElasticLoadBalancing::LoadBalancer type.

module Stratosphere.ResourceProperties.ListenerProperty where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ListenerProperty. See 'listenerProperty'
-- for a more convenient constructor.
data ListenerProperty =
  ListenerProperty
  { _listenerPropertyInstancePort :: Val Text
  , _listenerPropertyInstanceProtocol :: Maybe (Val Text)
  , _listenerPropertyLoadBalancerPort :: Val Text
  , _listenerPropertyPolicyNames :: Maybe [Val Text]
  , _listenerPropertyProtocol :: Val Text
  , _listenerPropertySSLCertificateId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ListenerProperty where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON ListenerProperty where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'ListenerProperty' containing required fields as
-- arguments.
listenerProperty
  :: Val Text -- ^ 'lpInstancePort'
  -> Val Text -- ^ 'lpLoadBalancerPort'
  -> Val Text -- ^ 'lpProtocol'
  -> ListenerProperty
listenerProperty instancePortarg loadBalancerPortarg protocolarg =
  ListenerProperty
  { _listenerPropertyInstancePort = instancePortarg
  , _listenerPropertyInstanceProtocol = Nothing
  , _listenerPropertyLoadBalancerPort = loadBalancerPortarg
  , _listenerPropertyPolicyNames = Nothing
  , _listenerPropertyProtocol = protocolarg
  , _listenerPropertySSLCertificateId = Nothing
  }

-- | Specifies the TCP port on which the instance server is listening. This
-- property cannot be modified for the life of the load balancer.
lpInstancePort :: Lens' ListenerProperty (Val Text)
lpInstancePort = lens _listenerPropertyInstancePort (\s a -> s { _listenerPropertyInstancePort = a })

-- | Specifies the protocol to use for routing traffic to back-end
-- instances—HTTP, HTTPS, TCP, or SSL. This property cannot be modified for
-- the life of the load balancer.
lpInstanceProtocol :: Lens' ListenerProperty (Maybe (Val Text))
lpInstanceProtocol = lens _listenerPropertyInstanceProtocol (\s a -> s { _listenerPropertyInstanceProtocol = a })

-- | Specifies the external load balancer port number. This property cannot be
-- modified for the life of the load balancer.
lpLoadBalancerPort :: Lens' ListenerProperty (Val Text)
lpLoadBalancerPort = lens _listenerPropertyLoadBalancerPort (\s a -> s { _listenerPropertyLoadBalancerPort = a })

-- | A list of ElasticLoadBalancing policy names to associate with the
-- listener.
lpPolicyNames :: Lens' ListenerProperty (Maybe [Val Text])
lpPolicyNames = lens _listenerPropertyPolicyNames (\s a -> s { _listenerPropertyPolicyNames = a })

-- | Specifies the load balancer transport protocol to use for routing — HTTP,
-- HTTPS, TCP or SSL. This property cannot be modified for the life of the
-- load balancer.
lpProtocol :: Lens' ListenerProperty (Val Text)
lpProtocol = lens _listenerPropertyProtocol (\s a -> s { _listenerPropertyProtocol = a })

-- | The ARN of the SSL certificate to use. For more information about SSL
-- certificates, see Managing Server Certificates in the AWS Identity and
-- Access Management documentation.
lpSSLCertificateId :: Lens' ListenerProperty (Maybe (Val Text))
lpSSLCertificateId = lens _listenerPropertySSLCertificateId (\s a -> s { _listenerPropertySSLCertificateId = a })