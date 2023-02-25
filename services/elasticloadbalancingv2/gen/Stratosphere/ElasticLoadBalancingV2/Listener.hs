module Stratosphere.ElasticLoadBalancingV2.Listener (
        module Exports, Listener(..), mkListener
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.Listener.ActionProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancingV2.Listener.CertificateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Listener
  = Listener {alpnPolicy :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
              certificates :: (Prelude.Maybe [CertificateProperty]),
              defaultActions :: [ActionProperty],
              loadBalancerArn :: (Value Prelude.Text),
              port :: (Prelude.Maybe (Value Prelude.Integer)),
              protocol :: (Prelude.Maybe (Value Prelude.Text)),
              sslPolicy :: (Prelude.Maybe (Value Prelude.Text))}
mkListener :: [ActionProperty] -> Value Prelude.Text -> Listener
mkListener defaultActions loadBalancerArn
  = Listener
      {defaultActions = defaultActions,
       loadBalancerArn = loadBalancerArn, alpnPolicy = Prelude.Nothing,
       certificates = Prelude.Nothing, port = Prelude.Nothing,
       protocol = Prelude.Nothing, sslPolicy = Prelude.Nothing}
instance ToResourceProperties Listener where
  toResourceProperties Listener {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancingV2::Listener",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DefaultActions" JSON..= defaultActions,
                            "LoadBalancerArn" JSON..= loadBalancerArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AlpnPolicy" Prelude.<$> alpnPolicy,
                               (JSON..=) "Certificates" Prelude.<$> certificates,
                               (JSON..=) "Port" Prelude.<$> port,
                               (JSON..=) "Protocol" Prelude.<$> protocol,
                               (JSON..=) "SslPolicy" Prelude.<$> sslPolicy]))}
instance JSON.ToJSON Listener where
  toJSON Listener {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DefaultActions" JSON..= defaultActions,
               "LoadBalancerArn" JSON..= loadBalancerArn]
              (Prelude.catMaybes
                 [(JSON..=) "AlpnPolicy" Prelude.<$> alpnPolicy,
                  (JSON..=) "Certificates" Prelude.<$> certificates,
                  (JSON..=) "Port" Prelude.<$> port,
                  (JSON..=) "Protocol" Prelude.<$> protocol,
                  (JSON..=) "SslPolicy" Prelude.<$> sslPolicy])))
instance Property "AlpnPolicy" Listener where
  type PropertyType "AlpnPolicy" Listener = ValueList (Value Prelude.Text)
  set newValue Listener {..}
    = Listener {alpnPolicy = Prelude.pure newValue, ..}
instance Property "Certificates" Listener where
  type PropertyType "Certificates" Listener = [CertificateProperty]
  set newValue Listener {..}
    = Listener {certificates = Prelude.pure newValue, ..}
instance Property "DefaultActions" Listener where
  type PropertyType "DefaultActions" Listener = [ActionProperty]
  set newValue Listener {..}
    = Listener {defaultActions = newValue, ..}
instance Property "LoadBalancerArn" Listener where
  type PropertyType "LoadBalancerArn" Listener = Value Prelude.Text
  set newValue Listener {..}
    = Listener {loadBalancerArn = newValue, ..}
instance Property "Port" Listener where
  type PropertyType "Port" Listener = Value Prelude.Integer
  set newValue Listener {..}
    = Listener {port = Prelude.pure newValue, ..}
instance Property "Protocol" Listener where
  type PropertyType "Protocol" Listener = Value Prelude.Text
  set newValue Listener {..}
    = Listener {protocol = Prelude.pure newValue, ..}
instance Property "SslPolicy" Listener where
  type PropertyType "SslPolicy" Listener = Value Prelude.Text
  set newValue Listener {..}
    = Listener {sslPolicy = Prelude.pure newValue, ..}