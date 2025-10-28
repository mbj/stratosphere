module Stratosphere.Redshift.EndpointAccess.VpcSecurityGroupProperty (
        VpcSecurityGroupProperty(..), mkVpcSecurityGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcSecurityGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-endpointaccess-vpcsecuritygroup.html>
    VpcSecurityGroupProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-endpointaccess-vpcsecuritygroup.html#cfn-redshift-endpointaccess-vpcsecuritygroup-status>
                              status :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-redshift-endpointaccess-vpcsecuritygroup.html#cfn-redshift-endpointaccess-vpcsecuritygroup-vpcsecuritygroupid>
                              vpcSecurityGroupId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcSecurityGroupProperty :: VpcSecurityGroupProperty
mkVpcSecurityGroupProperty
  = VpcSecurityGroupProperty
      {haddock_workaround_ = (), status = Prelude.Nothing,
       vpcSecurityGroupId = Prelude.Nothing}
instance ToResourceProperties VpcSecurityGroupProperty where
  toResourceProperties VpcSecurityGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::Redshift::EndpointAccess.VpcSecurityGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Status" Prelude.<$> status,
                            (JSON..=) "VpcSecurityGroupId" Prelude.<$> vpcSecurityGroupId])}
instance JSON.ToJSON VpcSecurityGroupProperty where
  toJSON VpcSecurityGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Status" Prelude.<$> status,
               (JSON..=) "VpcSecurityGroupId" Prelude.<$> vpcSecurityGroupId]))
instance Property "Status" VpcSecurityGroupProperty where
  type PropertyType "Status" VpcSecurityGroupProperty = Value Prelude.Text
  set newValue VpcSecurityGroupProperty {..}
    = VpcSecurityGroupProperty {status = Prelude.pure newValue, ..}
instance Property "VpcSecurityGroupId" VpcSecurityGroupProperty where
  type PropertyType "VpcSecurityGroupId" VpcSecurityGroupProperty = Value Prelude.Text
  set newValue VpcSecurityGroupProperty {..}
    = VpcSecurityGroupProperty
        {vpcSecurityGroupId = Prelude.pure newValue, ..}