module Stratosphere.S3Outposts.Endpoint (
        Endpoint(..), mkEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Endpoint
  = Endpoint {accessType :: (Prelude.Maybe (Value Prelude.Text)),
              customerOwnedIpv4Pool :: (Prelude.Maybe (Value Prelude.Text)),
              outpostId :: (Value Prelude.Text),
              securityGroupId :: (Value Prelude.Text),
              subnetId :: (Value Prelude.Text)}
mkEndpoint ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> Endpoint
mkEndpoint outpostId securityGroupId subnetId
  = Endpoint
      {outpostId = outpostId, securityGroupId = securityGroupId,
       subnetId = subnetId, accessType = Prelude.Nothing,
       customerOwnedIpv4Pool = Prelude.Nothing}
instance ToResourceProperties Endpoint where
  toResourceProperties Endpoint {..}
    = ResourceProperties
        {awsType = "AWS::S3Outposts::Endpoint",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OutpostId" JSON..= outpostId,
                            "SecurityGroupId" JSON..= securityGroupId,
                            "SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessType" Prelude.<$> accessType,
                               (JSON..=) "CustomerOwnedIpv4Pool"
                                 Prelude.<$> customerOwnedIpv4Pool]))}
instance JSON.ToJSON Endpoint where
  toJSON Endpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OutpostId" JSON..= outpostId,
               "SecurityGroupId" JSON..= securityGroupId,
               "SubnetId" JSON..= subnetId]
              (Prelude.catMaybes
                 [(JSON..=) "AccessType" Prelude.<$> accessType,
                  (JSON..=) "CustomerOwnedIpv4Pool"
                    Prelude.<$> customerOwnedIpv4Pool])))
instance Property "AccessType" Endpoint where
  type PropertyType "AccessType" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {accessType = Prelude.pure newValue, ..}
instance Property "CustomerOwnedIpv4Pool" Endpoint where
  type PropertyType "CustomerOwnedIpv4Pool" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {customerOwnedIpv4Pool = Prelude.pure newValue, ..}
instance Property "OutpostId" Endpoint where
  type PropertyType "OutpostId" Endpoint = Value Prelude.Text
  set newValue Endpoint {..} = Endpoint {outpostId = newValue, ..}
instance Property "SecurityGroupId" Endpoint where
  type PropertyType "SecurityGroupId" Endpoint = Value Prelude.Text
  set newValue Endpoint {..}
    = Endpoint {securityGroupId = newValue, ..}
instance Property "SubnetId" Endpoint where
  type PropertyType "SubnetId" Endpoint = Value Prelude.Text
  set newValue Endpoint {..} = Endpoint {subnetId = newValue, ..}