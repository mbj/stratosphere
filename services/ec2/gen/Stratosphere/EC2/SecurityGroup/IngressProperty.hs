module Stratosphere.EC2.SecurityGroup.IngressProperty (
        IngressProperty(..), mkIngressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressProperty
  = IngressProperty {cidrIp :: (Prelude.Maybe (Value Prelude.Text)),
                     cidrIpv6 :: (Prelude.Maybe (Value Prelude.Text)),
                     description :: (Prelude.Maybe (Value Prelude.Text)),
                     fromPort :: (Prelude.Maybe (Value Prelude.Integer)),
                     ipProtocol :: (Value Prelude.Text),
                     sourcePrefixListId :: (Prelude.Maybe (Value Prelude.Text)),
                     sourceSecurityGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                     sourceSecurityGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                     sourceSecurityGroupOwnerId :: (Prelude.Maybe (Value Prelude.Text)),
                     toPort :: (Prelude.Maybe (Value Prelude.Integer))}
mkIngressProperty :: Value Prelude.Text -> IngressProperty
mkIngressProperty ipProtocol
  = IngressProperty
      {ipProtocol = ipProtocol, cidrIp = Prelude.Nothing,
       cidrIpv6 = Prelude.Nothing, description = Prelude.Nothing,
       fromPort = Prelude.Nothing, sourcePrefixListId = Prelude.Nothing,
       sourceSecurityGroupId = Prelude.Nothing,
       sourceSecurityGroupName = Prelude.Nothing,
       sourceSecurityGroupOwnerId = Prelude.Nothing,
       toPort = Prelude.Nothing}
instance ToResourceProperties IngressProperty where
  toResourceProperties IngressProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SecurityGroup.Ingress",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpProtocol" JSON..= ipProtocol]
                           (Prelude.catMaybes
                              [(JSON..=) "CidrIp" Prelude.<$> cidrIp,
                               (JSON..=) "CidrIpv6" Prelude.<$> cidrIpv6,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "FromPort" Prelude.<$> fromPort,
                               (JSON..=) "SourcePrefixListId" Prelude.<$> sourcePrefixListId,
                               (JSON..=) "SourceSecurityGroupId"
                                 Prelude.<$> sourceSecurityGroupId,
                               (JSON..=) "SourceSecurityGroupName"
                                 Prelude.<$> sourceSecurityGroupName,
                               (JSON..=) "SourceSecurityGroupOwnerId"
                                 Prelude.<$> sourceSecurityGroupOwnerId,
                               (JSON..=) "ToPort" Prelude.<$> toPort]))}
instance JSON.ToJSON IngressProperty where
  toJSON IngressProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpProtocol" JSON..= ipProtocol]
              (Prelude.catMaybes
                 [(JSON..=) "CidrIp" Prelude.<$> cidrIp,
                  (JSON..=) "CidrIpv6" Prelude.<$> cidrIpv6,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "FromPort" Prelude.<$> fromPort,
                  (JSON..=) "SourcePrefixListId" Prelude.<$> sourcePrefixListId,
                  (JSON..=) "SourceSecurityGroupId"
                    Prelude.<$> sourceSecurityGroupId,
                  (JSON..=) "SourceSecurityGroupName"
                    Prelude.<$> sourceSecurityGroupName,
                  (JSON..=) "SourceSecurityGroupOwnerId"
                    Prelude.<$> sourceSecurityGroupOwnerId,
                  (JSON..=) "ToPort" Prelude.<$> toPort])))
instance Property "CidrIp" IngressProperty where
  type PropertyType "CidrIp" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty {cidrIp = Prelude.pure newValue, ..}
instance Property "CidrIpv6" IngressProperty where
  type PropertyType "CidrIpv6" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty {cidrIpv6 = Prelude.pure newValue, ..}
instance Property "Description" IngressProperty where
  type PropertyType "Description" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty {description = Prelude.pure newValue, ..}
instance Property "FromPort" IngressProperty where
  type PropertyType "FromPort" IngressProperty = Value Prelude.Integer
  set newValue IngressProperty {..}
    = IngressProperty {fromPort = Prelude.pure newValue, ..}
instance Property "IpProtocol" IngressProperty where
  type PropertyType "IpProtocol" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty {ipProtocol = newValue, ..}
instance Property "SourcePrefixListId" IngressProperty where
  type PropertyType "SourcePrefixListId" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty {sourcePrefixListId = Prelude.pure newValue, ..}
instance Property "SourceSecurityGroupId" IngressProperty where
  type PropertyType "SourceSecurityGroupId" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty
        {sourceSecurityGroupId = Prelude.pure newValue, ..}
instance Property "SourceSecurityGroupName" IngressProperty where
  type PropertyType "SourceSecurityGroupName" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty
        {sourceSecurityGroupName = Prelude.pure newValue, ..}
instance Property "SourceSecurityGroupOwnerId" IngressProperty where
  type PropertyType "SourceSecurityGroupOwnerId" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty
        {sourceSecurityGroupOwnerId = Prelude.pure newValue, ..}
instance Property "ToPort" IngressProperty where
  type PropertyType "ToPort" IngressProperty = Value Prelude.Integer
  set newValue IngressProperty {..}
    = IngressProperty {toPort = Prelude.pure newValue, ..}