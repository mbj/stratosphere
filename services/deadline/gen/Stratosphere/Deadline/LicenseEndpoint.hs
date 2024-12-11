module Stratosphere.Deadline.LicenseEndpoint (
        LicenseEndpoint(..), mkLicenseEndpoint
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data LicenseEndpoint
  = LicenseEndpoint {securityGroupIds :: (ValueList Prelude.Text),
                     subnetIds :: (ValueList Prelude.Text),
                     tags :: (Prelude.Maybe [Tag]),
                     vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLicenseEndpoint ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text -> Value Prelude.Text -> LicenseEndpoint
mkLicenseEndpoint securityGroupIds subnetIds vpcId
  = LicenseEndpoint
      {securityGroupIds = securityGroupIds, subnetIds = subnetIds,
       vpcId = vpcId, tags = Prelude.Nothing}
instance ToResourceProperties LicenseEndpoint where
  toResourceProperties LicenseEndpoint {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::LicenseEndpoint",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SecurityGroupIds" JSON..= securityGroupIds,
                            "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId]
                           (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON LicenseEndpoint where
  toJSON LicenseEndpoint {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SecurityGroupIds" JSON..= securityGroupIds,
               "SubnetIds" JSON..= subnetIds, "VpcId" JSON..= vpcId]
              (Prelude.catMaybes [(JSON..=) "Tags" Prelude.<$> tags])))
instance Property "SecurityGroupIds" LicenseEndpoint where
  type PropertyType "SecurityGroupIds" LicenseEndpoint = ValueList Prelude.Text
  set newValue LicenseEndpoint {..}
    = LicenseEndpoint {securityGroupIds = newValue, ..}
instance Property "SubnetIds" LicenseEndpoint where
  type PropertyType "SubnetIds" LicenseEndpoint = ValueList Prelude.Text
  set newValue LicenseEndpoint {..}
    = LicenseEndpoint {subnetIds = newValue, ..}
instance Property "Tags" LicenseEndpoint where
  type PropertyType "Tags" LicenseEndpoint = [Tag]
  set newValue LicenseEndpoint {..}
    = LicenseEndpoint {tags = Prelude.pure newValue, ..}
instance Property "VpcId" LicenseEndpoint where
  type PropertyType "VpcId" LicenseEndpoint = Value Prelude.Text
  set newValue LicenseEndpoint {..}
    = LicenseEndpoint {vpcId = newValue, ..}