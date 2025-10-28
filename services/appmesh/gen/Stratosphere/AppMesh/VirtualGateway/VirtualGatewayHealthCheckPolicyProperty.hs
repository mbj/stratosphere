module Stratosphere.AppMesh.VirtualGateway.VirtualGatewayHealthCheckPolicyProperty (
        VirtualGatewayHealthCheckPolicyProperty(..),
        mkVirtualGatewayHealthCheckPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VirtualGatewayHealthCheckPolicyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html>
    VirtualGatewayHealthCheckPolicyProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-healthythreshold>
                                             healthyThreshold :: (Value Prelude.Integer),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-intervalmillis>
                                             intervalMillis :: (Value Prelude.Integer),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-path>
                                             path :: (Prelude.Maybe (Value Prelude.Text)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-port>
                                             port :: (Prelude.Maybe (Value Prelude.Integer)),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-protocol>
                                             protocol :: (Value Prelude.Text),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-timeoutmillis>
                                             timeoutMillis :: (Value Prelude.Integer),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy.html#cfn-appmesh-virtualgateway-virtualgatewayhealthcheckpolicy-unhealthythreshold>
                                             unhealthyThreshold :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVirtualGatewayHealthCheckPolicyProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Integer
           -> Value Prelude.Integer -> VirtualGatewayHealthCheckPolicyProperty
mkVirtualGatewayHealthCheckPolicyProperty
  healthyThreshold
  intervalMillis
  protocol
  timeoutMillis
  unhealthyThreshold
  = VirtualGatewayHealthCheckPolicyProperty
      {haddock_workaround_ = (), healthyThreshold = healthyThreshold,
       intervalMillis = intervalMillis, protocol = protocol,
       timeoutMillis = timeoutMillis,
       unhealthyThreshold = unhealthyThreshold, path = Prelude.Nothing,
       port = Prelude.Nothing}
instance ToResourceProperties VirtualGatewayHealthCheckPolicyProperty where
  toResourceProperties VirtualGatewayHealthCheckPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualGateway.VirtualGatewayHealthCheckPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HealthyThreshold" JSON..= healthyThreshold,
                            "IntervalMillis" JSON..= intervalMillis,
                            "Protocol" JSON..= protocol, "TimeoutMillis" JSON..= timeoutMillis,
                            "UnhealthyThreshold" JSON..= unhealthyThreshold]
                           (Prelude.catMaybes
                              [(JSON..=) "Path" Prelude.<$> path,
                               (JSON..=) "Port" Prelude.<$> port]))}
instance JSON.ToJSON VirtualGatewayHealthCheckPolicyProperty where
  toJSON VirtualGatewayHealthCheckPolicyProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HealthyThreshold" JSON..= healthyThreshold,
               "IntervalMillis" JSON..= intervalMillis,
               "Protocol" JSON..= protocol, "TimeoutMillis" JSON..= timeoutMillis,
               "UnhealthyThreshold" JSON..= unhealthyThreshold]
              (Prelude.catMaybes
                 [(JSON..=) "Path" Prelude.<$> path,
                  (JSON..=) "Port" Prelude.<$> port])))
instance Property "HealthyThreshold" VirtualGatewayHealthCheckPolicyProperty where
  type PropertyType "HealthyThreshold" VirtualGatewayHealthCheckPolicyProperty = Value Prelude.Integer
  set newValue VirtualGatewayHealthCheckPolicyProperty {..}
    = VirtualGatewayHealthCheckPolicyProperty
        {healthyThreshold = newValue, ..}
instance Property "IntervalMillis" VirtualGatewayHealthCheckPolicyProperty where
  type PropertyType "IntervalMillis" VirtualGatewayHealthCheckPolicyProperty = Value Prelude.Integer
  set newValue VirtualGatewayHealthCheckPolicyProperty {..}
    = VirtualGatewayHealthCheckPolicyProperty
        {intervalMillis = newValue, ..}
instance Property "Path" VirtualGatewayHealthCheckPolicyProperty where
  type PropertyType "Path" VirtualGatewayHealthCheckPolicyProperty = Value Prelude.Text
  set newValue VirtualGatewayHealthCheckPolicyProperty {..}
    = VirtualGatewayHealthCheckPolicyProperty
        {path = Prelude.pure newValue, ..}
instance Property "Port" VirtualGatewayHealthCheckPolicyProperty where
  type PropertyType "Port" VirtualGatewayHealthCheckPolicyProperty = Value Prelude.Integer
  set newValue VirtualGatewayHealthCheckPolicyProperty {..}
    = VirtualGatewayHealthCheckPolicyProperty
        {port = Prelude.pure newValue, ..}
instance Property "Protocol" VirtualGatewayHealthCheckPolicyProperty where
  type PropertyType "Protocol" VirtualGatewayHealthCheckPolicyProperty = Value Prelude.Text
  set newValue VirtualGatewayHealthCheckPolicyProperty {..}
    = VirtualGatewayHealthCheckPolicyProperty {protocol = newValue, ..}
instance Property "TimeoutMillis" VirtualGatewayHealthCheckPolicyProperty where
  type PropertyType "TimeoutMillis" VirtualGatewayHealthCheckPolicyProperty = Value Prelude.Integer
  set newValue VirtualGatewayHealthCheckPolicyProperty {..}
    = VirtualGatewayHealthCheckPolicyProperty
        {timeoutMillis = newValue, ..}
instance Property "UnhealthyThreshold" VirtualGatewayHealthCheckPolicyProperty where
  type PropertyType "UnhealthyThreshold" VirtualGatewayHealthCheckPolicyProperty = Value Prelude.Integer
  set newValue VirtualGatewayHealthCheckPolicyProperty {..}
    = VirtualGatewayHealthCheckPolicyProperty
        {unhealthyThreshold = newValue, ..}