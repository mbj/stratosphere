module Stratosphere.ElasticLoadBalancing.LoadBalancer (
        module Exports, LoadBalancer(..), mkLoadBalancer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancing.LoadBalancer.AccessLoggingPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancing.LoadBalancer.AppCookieStickinessPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancing.LoadBalancer.ConnectionDrainingPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancing.LoadBalancer.ConnectionSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancing.LoadBalancer.HealthCheckProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancing.LoadBalancer.LBCookieStickinessPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancing.LoadBalancer.ListenersProperty as Exports
import {-# SOURCE #-} Stratosphere.ElasticLoadBalancing.LoadBalancer.PoliciesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LoadBalancer
  = LoadBalancer {accessLoggingPolicy :: (Prelude.Maybe AccessLoggingPolicyProperty),
                  appCookieStickinessPolicy :: (Prelude.Maybe [AppCookieStickinessPolicyProperty]),
                  availabilityZones :: (Prelude.Maybe (ValueList Prelude.Text)),
                  connectionDrainingPolicy :: (Prelude.Maybe ConnectionDrainingPolicyProperty),
                  connectionSettings :: (Prelude.Maybe ConnectionSettingsProperty),
                  crossZone :: (Prelude.Maybe (Value Prelude.Bool)),
                  healthCheck :: (Prelude.Maybe HealthCheckProperty),
                  instances :: (Prelude.Maybe (ValueList Prelude.Text)),
                  lBCookieStickinessPolicy :: (Prelude.Maybe [LBCookieStickinessPolicyProperty]),
                  listeners :: [ListenersProperty],
                  loadBalancerName :: (Prelude.Maybe (Value Prelude.Text)),
                  policies :: (Prelude.Maybe [PoliciesProperty]),
                  scheme :: (Prelude.Maybe (Value Prelude.Text)),
                  securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                  subnets :: (Prelude.Maybe (ValueList Prelude.Text)),
                  tags :: (Prelude.Maybe [Tag])}
mkLoadBalancer :: [ListenersProperty] -> LoadBalancer
mkLoadBalancer listeners
  = LoadBalancer
      {listeners = listeners, accessLoggingPolicy = Prelude.Nothing,
       appCookieStickinessPolicy = Prelude.Nothing,
       availabilityZones = Prelude.Nothing,
       connectionDrainingPolicy = Prelude.Nothing,
       connectionSettings = Prelude.Nothing, crossZone = Prelude.Nothing,
       healthCheck = Prelude.Nothing, instances = Prelude.Nothing,
       lBCookieStickinessPolicy = Prelude.Nothing,
       loadBalancerName = Prelude.Nothing, policies = Prelude.Nothing,
       scheme = Prelude.Nothing, securityGroups = Prelude.Nothing,
       subnets = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties LoadBalancer where
  toResourceProperties LoadBalancer {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Listeners" JSON..= listeners]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessLoggingPolicy" Prelude.<$> accessLoggingPolicy,
                               (JSON..=) "AppCookieStickinessPolicy"
                                 Prelude.<$> appCookieStickinessPolicy,
                               (JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                               (JSON..=) "ConnectionDrainingPolicy"
                                 Prelude.<$> connectionDrainingPolicy,
                               (JSON..=) "ConnectionSettings" Prelude.<$> connectionSettings,
                               (JSON..=) "CrossZone" Prelude.<$> crossZone,
                               (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                               (JSON..=) "Instances" Prelude.<$> instances,
                               (JSON..=) "LBCookieStickinessPolicy"
                                 Prelude.<$> lBCookieStickinessPolicy,
                               (JSON..=) "LoadBalancerName" Prelude.<$> loadBalancerName,
                               (JSON..=) "Policies" Prelude.<$> policies,
                               (JSON..=) "Scheme" Prelude.<$> scheme,
                               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                               (JSON..=) "Subnets" Prelude.<$> subnets,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LoadBalancer where
  toJSON LoadBalancer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Listeners" JSON..= listeners]
              (Prelude.catMaybes
                 [(JSON..=) "AccessLoggingPolicy" Prelude.<$> accessLoggingPolicy,
                  (JSON..=) "AppCookieStickinessPolicy"
                    Prelude.<$> appCookieStickinessPolicy,
                  (JSON..=) "AvailabilityZones" Prelude.<$> availabilityZones,
                  (JSON..=) "ConnectionDrainingPolicy"
                    Prelude.<$> connectionDrainingPolicy,
                  (JSON..=) "ConnectionSettings" Prelude.<$> connectionSettings,
                  (JSON..=) "CrossZone" Prelude.<$> crossZone,
                  (JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                  (JSON..=) "Instances" Prelude.<$> instances,
                  (JSON..=) "LBCookieStickinessPolicy"
                    Prelude.<$> lBCookieStickinessPolicy,
                  (JSON..=) "LoadBalancerName" Prelude.<$> loadBalancerName,
                  (JSON..=) "Policies" Prelude.<$> policies,
                  (JSON..=) "Scheme" Prelude.<$> scheme,
                  (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                  (JSON..=) "Subnets" Prelude.<$> subnets,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AccessLoggingPolicy" LoadBalancer where
  type PropertyType "AccessLoggingPolicy" LoadBalancer = AccessLoggingPolicyProperty
  set newValue LoadBalancer {..}
    = LoadBalancer {accessLoggingPolicy = Prelude.pure newValue, ..}
instance Property "AppCookieStickinessPolicy" LoadBalancer where
  type PropertyType "AppCookieStickinessPolicy" LoadBalancer = [AppCookieStickinessPolicyProperty]
  set newValue LoadBalancer {..}
    = LoadBalancer
        {appCookieStickinessPolicy = Prelude.pure newValue, ..}
instance Property "AvailabilityZones" LoadBalancer where
  type PropertyType "AvailabilityZones" LoadBalancer = ValueList Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {availabilityZones = Prelude.pure newValue, ..}
instance Property "ConnectionDrainingPolicy" LoadBalancer where
  type PropertyType "ConnectionDrainingPolicy" LoadBalancer = ConnectionDrainingPolicyProperty
  set newValue LoadBalancer {..}
    = LoadBalancer
        {connectionDrainingPolicy = Prelude.pure newValue, ..}
instance Property "ConnectionSettings" LoadBalancer where
  type PropertyType "ConnectionSettings" LoadBalancer = ConnectionSettingsProperty
  set newValue LoadBalancer {..}
    = LoadBalancer {connectionSettings = Prelude.pure newValue, ..}
instance Property "CrossZone" LoadBalancer where
  type PropertyType "CrossZone" LoadBalancer = Value Prelude.Bool
  set newValue LoadBalancer {..}
    = LoadBalancer {crossZone = Prelude.pure newValue, ..}
instance Property "HealthCheck" LoadBalancer where
  type PropertyType "HealthCheck" LoadBalancer = HealthCheckProperty
  set newValue LoadBalancer {..}
    = LoadBalancer {healthCheck = Prelude.pure newValue, ..}
instance Property "Instances" LoadBalancer where
  type PropertyType "Instances" LoadBalancer = ValueList Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {instances = Prelude.pure newValue, ..}
instance Property "LBCookieStickinessPolicy" LoadBalancer where
  type PropertyType "LBCookieStickinessPolicy" LoadBalancer = [LBCookieStickinessPolicyProperty]
  set newValue LoadBalancer {..}
    = LoadBalancer
        {lBCookieStickinessPolicy = Prelude.pure newValue, ..}
instance Property "Listeners" LoadBalancer where
  type PropertyType "Listeners" LoadBalancer = [ListenersProperty]
  set newValue LoadBalancer {..}
    = LoadBalancer {listeners = newValue, ..}
instance Property "LoadBalancerName" LoadBalancer where
  type PropertyType "LoadBalancerName" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {loadBalancerName = Prelude.pure newValue, ..}
instance Property "Policies" LoadBalancer where
  type PropertyType "Policies" LoadBalancer = [PoliciesProperty]
  set newValue LoadBalancer {..}
    = LoadBalancer {policies = Prelude.pure newValue, ..}
instance Property "Scheme" LoadBalancer where
  type PropertyType "Scheme" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {scheme = Prelude.pure newValue, ..}
instance Property "SecurityGroups" LoadBalancer where
  type PropertyType "SecurityGroups" LoadBalancer = ValueList Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {securityGroups = Prelude.pure newValue, ..}
instance Property "Subnets" LoadBalancer where
  type PropertyType "Subnets" LoadBalancer = ValueList Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {subnets = Prelude.pure newValue, ..}
instance Property "Tags" LoadBalancer where
  type PropertyType "Tags" LoadBalancer = [Tag]
  set newValue LoadBalancer {..}
    = LoadBalancer {tags = Prelude.pure newValue, ..}