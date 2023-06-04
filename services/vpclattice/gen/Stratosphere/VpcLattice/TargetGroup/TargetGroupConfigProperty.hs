module Stratosphere.VpcLattice.TargetGroup.TargetGroupConfigProperty (
        module Exports, TargetGroupConfigProperty(..),
        mkTargetGroupConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.VpcLattice.TargetGroup.HealthCheckConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetGroupConfigProperty
  = TargetGroupConfigProperty {healthCheck :: (Prelude.Maybe HealthCheckConfigProperty),
                               ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                               port :: (Value Prelude.Integer),
                               protocol :: (Value Prelude.Text),
                               protocolVersion :: (Prelude.Maybe (Value Prelude.Text)),
                               vpcIdentifier :: (Value Prelude.Text)}
mkTargetGroupConfigProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Text -> TargetGroupConfigProperty
mkTargetGroupConfigProperty port protocol vpcIdentifier
  = TargetGroupConfigProperty
      {port = port, protocol = protocol, vpcIdentifier = vpcIdentifier,
       healthCheck = Prelude.Nothing, ipAddressType = Prelude.Nothing,
       protocolVersion = Prelude.Nothing}
instance ToResourceProperties TargetGroupConfigProperty where
  toResourceProperties TargetGroupConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::TargetGroup.TargetGroupConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Port" JSON..= port, "Protocol" JSON..= protocol,
                            "VpcIdentifier" JSON..= vpcIdentifier]
                           (Prelude.catMaybes
                              [(JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                               (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                               (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion]))}
instance JSON.ToJSON TargetGroupConfigProperty where
  toJSON TargetGroupConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Port" JSON..= port, "Protocol" JSON..= protocol,
               "VpcIdentifier" JSON..= vpcIdentifier]
              (Prelude.catMaybes
                 [(JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                  (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                  (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion])))
instance Property "HealthCheck" TargetGroupConfigProperty where
  type PropertyType "HealthCheck" TargetGroupConfigProperty = HealthCheckConfigProperty
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty
        {healthCheck = Prelude.pure newValue, ..}
instance Property "IpAddressType" TargetGroupConfigProperty where
  type PropertyType "IpAddressType" TargetGroupConfigProperty = Value Prelude.Text
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty
        {ipAddressType = Prelude.pure newValue, ..}
instance Property "Port" TargetGroupConfigProperty where
  type PropertyType "Port" TargetGroupConfigProperty = Value Prelude.Integer
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty {port = newValue, ..}
instance Property "Protocol" TargetGroupConfigProperty where
  type PropertyType "Protocol" TargetGroupConfigProperty = Value Prelude.Text
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty {protocol = newValue, ..}
instance Property "ProtocolVersion" TargetGroupConfigProperty where
  type PropertyType "ProtocolVersion" TargetGroupConfigProperty = Value Prelude.Text
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty
        {protocolVersion = Prelude.pure newValue, ..}
instance Property "VpcIdentifier" TargetGroupConfigProperty where
  type PropertyType "VpcIdentifier" TargetGroupConfigProperty = Value Prelude.Text
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty {vpcIdentifier = newValue, ..}