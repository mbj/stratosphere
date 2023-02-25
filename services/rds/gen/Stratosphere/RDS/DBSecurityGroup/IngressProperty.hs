module Stratosphere.RDS.DBSecurityGroup.IngressProperty (
        IngressProperty(..), mkIngressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IngressProperty
  = IngressProperty {cIDRIP :: (Prelude.Maybe (Value Prelude.Text)),
                     eC2SecurityGroupId :: (Prelude.Maybe (Value Prelude.Text)),
                     eC2SecurityGroupName :: (Prelude.Maybe (Value Prelude.Text)),
                     eC2SecurityGroupOwnerId :: (Prelude.Maybe (Value Prelude.Text))}
mkIngressProperty :: IngressProperty
mkIngressProperty
  = IngressProperty
      {cIDRIP = Prelude.Nothing, eC2SecurityGroupId = Prelude.Nothing,
       eC2SecurityGroupName = Prelude.Nothing,
       eC2SecurityGroupOwnerId = Prelude.Nothing}
instance ToResourceProperties IngressProperty where
  toResourceProperties IngressProperty {..}
    = ResourceProperties
        {awsType = "AWS::RDS::DBSecurityGroup.Ingress",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CIDRIP" Prelude.<$> cIDRIP,
                            (JSON..=) "EC2SecurityGroupId" Prelude.<$> eC2SecurityGroupId,
                            (JSON..=) "EC2SecurityGroupName" Prelude.<$> eC2SecurityGroupName,
                            (JSON..=) "EC2SecurityGroupOwnerId"
                              Prelude.<$> eC2SecurityGroupOwnerId])}
instance JSON.ToJSON IngressProperty where
  toJSON IngressProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CIDRIP" Prelude.<$> cIDRIP,
               (JSON..=) "EC2SecurityGroupId" Prelude.<$> eC2SecurityGroupId,
               (JSON..=) "EC2SecurityGroupName" Prelude.<$> eC2SecurityGroupName,
               (JSON..=) "EC2SecurityGroupOwnerId"
                 Prelude.<$> eC2SecurityGroupOwnerId]))
instance Property "CIDRIP" IngressProperty where
  type PropertyType "CIDRIP" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty {cIDRIP = Prelude.pure newValue, ..}
instance Property "EC2SecurityGroupId" IngressProperty where
  type PropertyType "EC2SecurityGroupId" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty {eC2SecurityGroupId = Prelude.pure newValue, ..}
instance Property "EC2SecurityGroupName" IngressProperty where
  type PropertyType "EC2SecurityGroupName" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty
        {eC2SecurityGroupName = Prelude.pure newValue, ..}
instance Property "EC2SecurityGroupOwnerId" IngressProperty where
  type PropertyType "EC2SecurityGroupOwnerId" IngressProperty = Value Prelude.Text
  set newValue IngressProperty {..}
    = IngressProperty
        {eC2SecurityGroupOwnerId = Prelude.pure newValue, ..}