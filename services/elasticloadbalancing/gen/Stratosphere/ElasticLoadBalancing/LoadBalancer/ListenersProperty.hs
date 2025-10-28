module Stratosphere.ElasticLoadBalancing.LoadBalancer.ListenersProperty (
        ListenersProperty(..), mkListenersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ListenersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html>
    ListenersProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-instanceport>
                       instancePort :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-instanceprotocol>
                       instanceProtocol :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-loadbalancerport>
                       loadBalancerPort :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-policynames>
                       policyNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-protocol>
                       protocol :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-listener.html#cfn-ec2-elb-listener-sslcertificateid>
                       sSLCertificateId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListenersProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> ListenersProperty
mkListenersProperty instancePort loadBalancerPort protocol
  = ListenersProperty
      {haddock_workaround_ = (), instancePort = instancePort,
       loadBalancerPort = loadBalancerPort, protocol = protocol,
       instanceProtocol = Prelude.Nothing, policyNames = Prelude.Nothing,
       sSLCertificateId = Prelude.Nothing}
instance ToResourceProperties ListenersProperty where
  toResourceProperties ListenersProperty {..}
    = ResourceProperties
        {awsType = "AWS::ElasticLoadBalancing::LoadBalancer.Listeners",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstancePort" JSON..= instancePort,
                            "LoadBalancerPort" JSON..= loadBalancerPort,
                            "Protocol" JSON..= protocol]
                           (Prelude.catMaybes
                              [(JSON..=) "InstanceProtocol" Prelude.<$> instanceProtocol,
                               (JSON..=) "PolicyNames" Prelude.<$> policyNames,
                               (JSON..=) "SSLCertificateId" Prelude.<$> sSLCertificateId]))}
instance JSON.ToJSON ListenersProperty where
  toJSON ListenersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstancePort" JSON..= instancePort,
               "LoadBalancerPort" JSON..= loadBalancerPort,
               "Protocol" JSON..= protocol]
              (Prelude.catMaybes
                 [(JSON..=) "InstanceProtocol" Prelude.<$> instanceProtocol,
                  (JSON..=) "PolicyNames" Prelude.<$> policyNames,
                  (JSON..=) "SSLCertificateId" Prelude.<$> sSLCertificateId])))
instance Property "InstancePort" ListenersProperty where
  type PropertyType "InstancePort" ListenersProperty = Value Prelude.Text
  set newValue ListenersProperty {..}
    = ListenersProperty {instancePort = newValue, ..}
instance Property "InstanceProtocol" ListenersProperty where
  type PropertyType "InstanceProtocol" ListenersProperty = Value Prelude.Text
  set newValue ListenersProperty {..}
    = ListenersProperty {instanceProtocol = Prelude.pure newValue, ..}
instance Property "LoadBalancerPort" ListenersProperty where
  type PropertyType "LoadBalancerPort" ListenersProperty = Value Prelude.Text
  set newValue ListenersProperty {..}
    = ListenersProperty {loadBalancerPort = newValue, ..}
instance Property "PolicyNames" ListenersProperty where
  type PropertyType "PolicyNames" ListenersProperty = ValueList Prelude.Text
  set newValue ListenersProperty {..}
    = ListenersProperty {policyNames = Prelude.pure newValue, ..}
instance Property "Protocol" ListenersProperty where
  type PropertyType "Protocol" ListenersProperty = Value Prelude.Text
  set newValue ListenersProperty {..}
    = ListenersProperty {protocol = newValue, ..}
instance Property "SSLCertificateId" ListenersProperty where
  type PropertyType "SSLCertificateId" ListenersProperty = Value Prelude.Text
  set newValue ListenersProperty {..}
    = ListenersProperty {sSLCertificateId = Prelude.pure newValue, ..}