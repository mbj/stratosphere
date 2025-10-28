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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkvpcassociation.html>
    ServiceNetworkVpcAssociation {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkvpcassociation.html#cfn-vpclattice-servicenetworkvpcassociation-securitygroupids>
                                  securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkvpcassociation.html#cfn-vpclattice-servicenetworkvpcassociation-servicenetworkidentifier>
                                  serviceNetworkIdentifier :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkvpcassociation.html#cfn-vpclattice-servicenetworkvpcassociation-tags>
                                  tags :: (Prelude.Maybe [Tag]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-vpclattice-servicenetworkvpcassociation.html#cfn-vpclattice-servicenetworkvpcassociation-vpcidentifier>
                                  vpcIdentifier :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceNetworkVpcAssociation :: ServiceNetworkVpcAssociation
mkServiceNetworkVpcAssociation
  = ServiceNetworkVpcAssociation
      {haddock_workaround_ = (), securityGroupIds = Prelude.Nothing,
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