module Stratosphere.EC2.VerifiedAccessEndpoint.LoadBalancerOptionsProperty (
        LoadBalancerOptionsProperty(..), mkLoadBalancerOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoadBalancerOptionsProperty
  = LoadBalancerOptionsProperty {loadBalancerArn :: (Prelude.Maybe (Value Prelude.Text)),
                                 port :: (Prelude.Maybe (Value Prelude.Integer)),
                                 protocol :: (Prelude.Maybe (Value Prelude.Text)),
                                 subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
mkLoadBalancerOptionsProperty :: LoadBalancerOptionsProperty
mkLoadBalancerOptionsProperty
  = LoadBalancerOptionsProperty
      {loadBalancerArn = Prelude.Nothing, port = Prelude.Nothing,
       protocol = Prelude.Nothing, subnetIds = Prelude.Nothing}
instance ToResourceProperties LoadBalancerOptionsProperty where
  toResourceProperties LoadBalancerOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessEndpoint.LoadBalancerOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LoadBalancerArn" Prelude.<$> loadBalancerArn,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON LoadBalancerOptionsProperty where
  toJSON LoadBalancerOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LoadBalancerArn" Prelude.<$> loadBalancerArn,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "LoadBalancerArn" LoadBalancerOptionsProperty where
  type PropertyType "LoadBalancerArn" LoadBalancerOptionsProperty = Value Prelude.Text
  set newValue LoadBalancerOptionsProperty {..}
    = LoadBalancerOptionsProperty
        {loadBalancerArn = Prelude.pure newValue, ..}
instance Property "Port" LoadBalancerOptionsProperty where
  type PropertyType "Port" LoadBalancerOptionsProperty = Value Prelude.Integer
  set newValue LoadBalancerOptionsProperty {..}
    = LoadBalancerOptionsProperty {port = Prelude.pure newValue, ..}
instance Property "Protocol" LoadBalancerOptionsProperty where
  type PropertyType "Protocol" LoadBalancerOptionsProperty = Value Prelude.Text
  set newValue LoadBalancerOptionsProperty {..}
    = LoadBalancerOptionsProperty
        {protocol = Prelude.pure newValue, ..}
instance Property "SubnetIds" LoadBalancerOptionsProperty where
  type PropertyType "SubnetIds" LoadBalancerOptionsProperty = ValueList Prelude.Text
  set newValue LoadBalancerOptionsProperty {..}
    = LoadBalancerOptionsProperty
        {subnetIds = Prelude.pure newValue, ..}