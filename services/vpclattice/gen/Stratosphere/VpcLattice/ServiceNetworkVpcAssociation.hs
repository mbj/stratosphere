module Stratosphere.VpcLattice.ServiceNetworkVpcAssociation (
        ServiceNetworkVpcAssociation(..), mkServiceNetworkVpcAssociation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ServiceNetworkVpcAssociation
  = ServiceNetworkVpcAssociation {securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  serviceNetworkIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                  tags :: (Prelude.Maybe [Tag]),
                                  vpcIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
mkServiceNetworkVpcAssociation :: ServiceNetworkVpcAssociation
mkServiceNetworkVpcAssociation
  = ServiceNetworkVpcAssociation
      {securityGroupIds = Prelude.Nothing,
       serviceNetworkIdentifier = Prelude.Nothing, tags = Prelude.Nothing,
       vpcIdentifier = Prelude.Nothing}
instance ToResourceProperties ServiceNetworkVpcAssociation where
  toResourceProperties ServiceNetworkVpcAssociation {..}
    = ResourceProperties
        {awsType = "AWS::VpcLattice::ServiceNetworkVpcAssociation",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "ServiceNetworkIdentifier"
                              Prelude.<$> serviceNetworkIdentifier,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "VpcIdentifier" Prelude.<$> vpcIdentifier])}
instance JSON.ToJSON ServiceNetworkVpcAssociation where
  toJSON ServiceNetworkVpcAssociation {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "ServiceNetworkIdentifier"
                 Prelude.<$> serviceNetworkIdentifier,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "VpcIdentifier" Prelude.<$> vpcIdentifier]))
instance Property "SecurityGroupIds" ServiceNetworkVpcAssociation where
  type PropertyType "SecurityGroupIds" ServiceNetworkVpcAssociation = ValueList Prelude.Text
  set newValue ServiceNetworkVpcAssociation {..}
    = ServiceNetworkVpcAssociation
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "ServiceNetworkIdentifier" ServiceNetworkVpcAssociation where
  type PropertyType "ServiceNetworkIdentifier" ServiceNetworkVpcAssociation = Value Prelude.Text
  set newValue ServiceNetworkVpcAssociation {..}
    = ServiceNetworkVpcAssociation
        {serviceNetworkIdentifier = Prelude.pure newValue, ..}
instance Property "Tags" ServiceNetworkVpcAssociation where
  type PropertyType "Tags" ServiceNetworkVpcAssociation = [Tag]
  set newValue ServiceNetworkVpcAssociation {..}
    = ServiceNetworkVpcAssociation {tags = Prelude.pure newValue, ..}
instance Property "VpcIdentifier" ServiceNetworkVpcAssociation where
  type PropertyType "VpcIdentifier" ServiceNetworkVpcAssociation = Value Prelude.Text
  set newValue ServiceNetworkVpcAssociation {..}
    = ServiceNetworkVpcAssociation
        {vpcIdentifier = Prelude.pure newValue, ..}