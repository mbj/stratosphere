module Stratosphere.PCAConnectorAD.Connector.VpcInformationProperty (
        VpcInformationProperty(..), mkVpcInformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcInformationProperty
  = VpcInformationProperty {securityGroupIds :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcInformationProperty ::
  ValueList Prelude.Text -> VpcInformationProperty
mkVpcInformationProperty securityGroupIds
  = VpcInformationProperty {securityGroupIds = securityGroupIds}
instance ToResourceProperties VpcInformationProperty where
  toResourceProperties VpcInformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::PCAConnectorAD::Connector.VpcInformation",
         supportsTags = Prelude.False,
         properties = ["SecurityGroupIds" JSON..= securityGroupIds]}
instance JSON.ToJSON VpcInformationProperty where
  toJSON VpcInformationProperty {..}
    = JSON.object ["SecurityGroupIds" JSON..= securityGroupIds]
instance Property "SecurityGroupIds" VpcInformationProperty where
  type PropertyType "SecurityGroupIds" VpcInformationProperty = ValueList Prelude.Text
  set newValue VpcInformationProperty {}
    = VpcInformationProperty {securityGroupIds = newValue, ..}