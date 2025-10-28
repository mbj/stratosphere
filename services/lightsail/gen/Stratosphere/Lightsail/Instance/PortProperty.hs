module Stratosphere.Lightsail.Instance.PortProperty (
        PortProperty(..), mkPortProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html>
    PortProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-accessdirection>
                  accessDirection :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-accessfrom>
                  accessFrom :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-accesstype>
                  accessType :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-cidrlistaliases>
                  cidrListAliases :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-cidrs>
                  cidrs :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-commonname>
                  commonName :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-fromport>
                  fromPort :: (Prelude.Maybe (Value Prelude.Integer)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-ipv6cidrs>
                  ipv6Cidrs :: (Prelude.Maybe (ValueList Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-protocol>
                  protocol :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lightsail-instance-port.html#cfn-lightsail-instance-port-toport>
                  toPort :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortProperty :: PortProperty
mkPortProperty
  = PortProperty
      {haddock_workaround_ = (), accessDirection = Prelude.Nothing,
       accessFrom = Prelude.Nothing, accessType = Prelude.Nothing,
       cidrListAliases = Prelude.Nothing, cidrs = Prelude.Nothing,
       commonName = Prelude.Nothing, fromPort = Prelude.Nothing,
       ipv6Cidrs = Prelude.Nothing, protocol = Prelude.Nothing,
       toPort = Prelude.Nothing}
instance ToResourceProperties PortProperty where
  toResourceProperties PortProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance.Port",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccessDirection" Prelude.<$> accessDirection,
                            (JSON..=) "AccessFrom" Prelude.<$> accessFrom,
                            (JSON..=) "AccessType" Prelude.<$> accessType,
                            (JSON..=) "CidrListAliases" Prelude.<$> cidrListAliases,
                            (JSON..=) "Cidrs" Prelude.<$> cidrs,
                            (JSON..=) "CommonName" Prelude.<$> commonName,
                            (JSON..=) "FromPort" Prelude.<$> fromPort,
                            (JSON..=) "Ipv6Cidrs" Prelude.<$> ipv6Cidrs,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "ToPort" Prelude.<$> toPort])}
instance JSON.ToJSON PortProperty where
  toJSON PortProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccessDirection" Prelude.<$> accessDirection,
               (JSON..=) "AccessFrom" Prelude.<$> accessFrom,
               (JSON..=) "AccessType" Prelude.<$> accessType,
               (JSON..=) "CidrListAliases" Prelude.<$> cidrListAliases,
               (JSON..=) "Cidrs" Prelude.<$> cidrs,
               (JSON..=) "CommonName" Prelude.<$> commonName,
               (JSON..=) "FromPort" Prelude.<$> fromPort,
               (JSON..=) "Ipv6Cidrs" Prelude.<$> ipv6Cidrs,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "ToPort" Prelude.<$> toPort]))
instance Property "AccessDirection" PortProperty where
  type PropertyType "AccessDirection" PortProperty = Value Prelude.Text
  set newValue PortProperty {..}
    = PortProperty {accessDirection = Prelude.pure newValue, ..}
instance Property "AccessFrom" PortProperty where
  type PropertyType "AccessFrom" PortProperty = Value Prelude.Text
  set newValue PortProperty {..}
    = PortProperty {accessFrom = Prelude.pure newValue, ..}
instance Property "AccessType" PortProperty where
  type PropertyType "AccessType" PortProperty = Value Prelude.Text
  set newValue PortProperty {..}
    = PortProperty {accessType = Prelude.pure newValue, ..}
instance Property "CidrListAliases" PortProperty where
  type PropertyType "CidrListAliases" PortProperty = ValueList Prelude.Text
  set newValue PortProperty {..}
    = PortProperty {cidrListAliases = Prelude.pure newValue, ..}
instance Property "Cidrs" PortProperty where
  type PropertyType "Cidrs" PortProperty = ValueList Prelude.Text
  set newValue PortProperty {..}
    = PortProperty {cidrs = Prelude.pure newValue, ..}
instance Property "CommonName" PortProperty where
  type PropertyType "CommonName" PortProperty = Value Prelude.Text
  set newValue PortProperty {..}
    = PortProperty {commonName = Prelude.pure newValue, ..}
instance Property "FromPort" PortProperty where
  type PropertyType "FromPort" PortProperty = Value Prelude.Integer
  set newValue PortProperty {..}
    = PortProperty {fromPort = Prelude.pure newValue, ..}
instance Property "Ipv6Cidrs" PortProperty where
  type PropertyType "Ipv6Cidrs" PortProperty = ValueList Prelude.Text
  set newValue PortProperty {..}
    = PortProperty {ipv6Cidrs = Prelude.pure newValue, ..}
instance Property "Protocol" PortProperty where
  type PropertyType "Protocol" PortProperty = Value Prelude.Text
  set newValue PortProperty {..}
    = PortProperty {protocol = Prelude.pure newValue, ..}
instance Property "ToPort" PortProperty where
  type PropertyType "ToPort" PortProperty = Value Prelude.Integer
  set newValue PortProperty {..}
    = PortProperty {toPort = Prelude.pure newValue, ..}