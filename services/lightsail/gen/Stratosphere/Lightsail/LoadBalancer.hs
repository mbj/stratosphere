module Stratosphere.Lightsail.LoadBalancer (
        LoadBalancer(..), mkLoadBalancer
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LoadBalancer
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html>
    LoadBalancer {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html#cfn-lightsail-loadbalancer-attachedinstances>
                  attachedInstances :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html#cfn-lightsail-loadbalancer-healthcheckpath>
                  healthCheckPath :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html#cfn-lightsail-loadbalancer-instanceport>
                  instancePort :: (Value Prelude.Integer),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html#cfn-lightsail-loadbalancer-ipaddresstype>
                  ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html#cfn-lightsail-loadbalancer-loadbalancername>
                  loadBalancerName :: (Value Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html#cfn-lightsail-loadbalancer-sessionstickinessenabled>
                  sessionStickinessEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html#cfn-lightsail-loadbalancer-sessionstickinesslbcookiedurationseconds>
                  sessionStickinessLBCookieDurationSeconds :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html#cfn-lightsail-loadbalancer-tags>
                  tags :: (Prelude.Maybe [Tag]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lightsail-loadbalancer.html#cfn-lightsail-loadbalancer-tlspolicyname>
                  tlsPolicyName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoadBalancer ::
  Value Prelude.Integer -> Value Prelude.Text -> LoadBalancer
mkLoadBalancer instancePort loadBalancerName
  = LoadBalancer
      {haddock_workaround_ = (), instancePort = instancePort,
       loadBalancerName = loadBalancerName,
       attachedInstances = Prelude.Nothing,
       healthCheckPath = Prelude.Nothing, ipAddressType = Prelude.Nothing,
       sessionStickinessEnabled = Prelude.Nothing,
       sessionStickinessLBCookieDurationSeconds = Prelude.Nothing,
       tags = Prelude.Nothing, tlsPolicyName = Prelude.Nothing}
instance ToResourceProperties LoadBalancer where
  toResourceProperties LoadBalancer {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::LoadBalancer",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstancePort" JSON..= instancePort,
                            "LoadBalancerName" JSON..= loadBalancerName]
                           (Prelude.catMaybes
                              [(JSON..=) "AttachedInstances" Prelude.<$> attachedInstances,
                               (JSON..=) "HealthCheckPath" Prelude.<$> healthCheckPath,
                               (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                               (JSON..=) "SessionStickinessEnabled"
                                 Prelude.<$> sessionStickinessEnabled,
                               (JSON..=) "SessionStickinessLBCookieDurationSeconds"
                                 Prelude.<$> sessionStickinessLBCookieDurationSeconds,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TlsPolicyName" Prelude.<$> tlsPolicyName]))}
instance JSON.ToJSON LoadBalancer where
  toJSON LoadBalancer {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstancePort" JSON..= instancePort,
               "LoadBalancerName" JSON..= loadBalancerName]
              (Prelude.catMaybes
                 [(JSON..=) "AttachedInstances" Prelude.<$> attachedInstances,
                  (JSON..=) "HealthCheckPath" Prelude.<$> healthCheckPath,
                  (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                  (JSON..=) "SessionStickinessEnabled"
                    Prelude.<$> sessionStickinessEnabled,
                  (JSON..=) "SessionStickinessLBCookieDurationSeconds"
                    Prelude.<$> sessionStickinessLBCookieDurationSeconds,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TlsPolicyName" Prelude.<$> tlsPolicyName])))
instance Property "AttachedInstances" LoadBalancer where
  type PropertyType "AttachedInstances" LoadBalancer = ValueList Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {attachedInstances = Prelude.pure newValue, ..}
instance Property "HealthCheckPath" LoadBalancer where
  type PropertyType "HealthCheckPath" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {healthCheckPath = Prelude.pure newValue, ..}
instance Property "InstancePort" LoadBalancer where
  type PropertyType "InstancePort" LoadBalancer = Value Prelude.Integer
  set newValue LoadBalancer {..}
    = LoadBalancer {instancePort = newValue, ..}
instance Property "IpAddressType" LoadBalancer where
  type PropertyType "IpAddressType" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {ipAddressType = Prelude.pure newValue, ..}
instance Property "LoadBalancerName" LoadBalancer where
  type PropertyType "LoadBalancerName" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {loadBalancerName = newValue, ..}
instance Property "SessionStickinessEnabled" LoadBalancer where
  type PropertyType "SessionStickinessEnabled" LoadBalancer = Value Prelude.Bool
  set newValue LoadBalancer {..}
    = LoadBalancer
        {sessionStickinessEnabled = Prelude.pure newValue, ..}
instance Property "SessionStickinessLBCookieDurationSeconds" LoadBalancer where
  type PropertyType "SessionStickinessLBCookieDurationSeconds" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer
        {sessionStickinessLBCookieDurationSeconds = Prelude.pure newValue,
         ..}
instance Property "Tags" LoadBalancer where
  type PropertyType "Tags" LoadBalancer = [Tag]
  set newValue LoadBalancer {..}
    = LoadBalancer {tags = Prelude.pure newValue, ..}
instance Property "TlsPolicyName" LoadBalancer where
  type PropertyType "TlsPolicyName" LoadBalancer = Value Prelude.Text
  set newValue LoadBalancer {..}
    = LoadBalancer {tlsPolicyName = Prelude.pure newValue, ..}