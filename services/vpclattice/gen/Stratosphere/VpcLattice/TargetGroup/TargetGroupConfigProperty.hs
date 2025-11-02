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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-targetgroup-targetgroupconfig.html>
    TargetGroupConfigProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-targetgroup-targetgroupconfig.html#cfn-vpclattice-targetgroup-targetgroupconfig-healthcheck>
                               healthCheck :: (Prelude.Maybe HealthCheckConfigProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-targetgroup-targetgroupconfig.html#cfn-vpclattice-targetgroup-targetgroupconfig-ipaddresstype>
                               ipAddressType :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-targetgroup-targetgroupconfig.html#cfn-vpclattice-targetgroup-targetgroupconfig-lambdaeventstructureversion>
                               lambdaEventStructureVersion :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-targetgroup-targetgroupconfig.html#cfn-vpclattice-targetgroup-targetgroupconfig-port>
                               port :: (Prelude.Maybe (Value Prelude.Integer)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-targetgroup-targetgroupconfig.html#cfn-vpclattice-targetgroup-targetgroupconfig-protocol>
                               protocol :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-targetgroup-targetgroupconfig.html#cfn-vpclattice-targetgroup-targetgroupconfig-protocolversion>
                               protocolVersion :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-vpclattice-targetgroup-targetgroupconfig.html#cfn-vpclattice-targetgroup-targetgroupconfig-vpcidentifier>
                               vpcIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetGroupConfigProperty :: TargetGroupConfigProperty
mkTargetGroupConfigProperty
  = TargetGroupConfigProperty
      {haddock_workaround_ = (), healthCheck = Prelude.Nothing,
       ipAddressType = Prelude.Nothing,
       lambdaEventStructureVersion = Prelude.Nothing,
       port = Prelude.Nothing, protocol = Prelude.Nothing,
       protocolVersion = Prelude.Nothing, vpcIdentifier = Prelude.Nothing}
instance ToResourceProperties TargetGroupConfigProperty where
  toResourceProperties TargetGroupConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::TargetGroup.TargetGroupConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HealthCheck" Prelude.<$> healthCheck,
                            (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
                            (JSON..=) "LambdaEventStructureVersion"
                              Prelude.<$> lambdaEventStructureVersion,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion,
                            (JSON..=) "VpcIdentifier" Prelude.<$> vpcIdentifier])}
instance JSON.ToJSON TargetGroupConfigProperty where
  toJSON TargetGroupConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HealthCheck" Prelude.<$> healthCheck,
               (JSON..=) "IpAddressType" Prelude.<$> ipAddressType,
               (JSON..=) "LambdaEventStructureVersion"
                 Prelude.<$> lambdaEventStructureVersion,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "ProtocolVersion" Prelude.<$> protocolVersion,
               (JSON..=) "VpcIdentifier" Prelude.<$> vpcIdentifier]))
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
instance Property "LambdaEventStructureVersion" TargetGroupConfigProperty where
  type PropertyType "LambdaEventStructureVersion" TargetGroupConfigProperty = Value Prelude.Text
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty
        {lambdaEventStructureVersion = Prelude.pure newValue, ..}
instance Property "Port" TargetGroupConfigProperty where
  type PropertyType "Port" TargetGroupConfigProperty = Value Prelude.Integer
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty {port = Prelude.pure newValue, ..}
instance Property "Protocol" TargetGroupConfigProperty where
  type PropertyType "Protocol" TargetGroupConfigProperty = Value Prelude.Text
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty {protocol = Prelude.pure newValue, ..}
instance Property "ProtocolVersion" TargetGroupConfigProperty where
  type PropertyType "ProtocolVersion" TargetGroupConfigProperty = Value Prelude.Text
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty
        {protocolVersion = Prelude.pure newValue, ..}
instance Property "VpcIdentifier" TargetGroupConfigProperty where
  type PropertyType "VpcIdentifier" TargetGroupConfigProperty = Value Prelude.Text
  set newValue TargetGroupConfigProperty {..}
    = TargetGroupConfigProperty
        {vpcIdentifier = Prelude.pure newValue, ..}