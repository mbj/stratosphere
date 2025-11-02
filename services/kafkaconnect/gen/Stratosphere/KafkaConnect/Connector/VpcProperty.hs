module Stratosphere.KafkaConnect.Connector.VpcProperty (
        VpcProperty(..), mkVpcProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-vpc.html>
    VpcProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-vpc.html#cfn-kafkaconnect-connector-vpc-securitygroups>
                 securityGroups :: (ValueList Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kafkaconnect-connector-vpc.html#cfn-kafkaconnect-connector-vpc-subnets>
                 subnets :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcProperty ::
  ValueList Prelude.Text -> ValueList Prelude.Text -> VpcProperty
mkVpcProperty securityGroups subnets
  = VpcProperty
      {haddock_workaround_ = (), securityGroups = securityGroups,
       subnets = subnets}
instance ToResourceProperties VpcProperty where
  toResourceProperties VpcProperty {..}
    = ResourceProperties
        {awsType = "AWS::KafkaConnect::Connector.Vpc",
         supportsTags = Prelude.False,
         properties = ["SecurityGroups" JSON..= securityGroups,
                       "Subnets" JSON..= subnets]}
instance JSON.ToJSON VpcProperty where
  toJSON VpcProperty {..}
    = JSON.object
        ["SecurityGroups" JSON..= securityGroups,
         "Subnets" JSON..= subnets]
instance Property "SecurityGroups" VpcProperty where
  type PropertyType "SecurityGroups" VpcProperty = ValueList Prelude.Text
  set newValue VpcProperty {..}
    = VpcProperty {securityGroups = newValue, ..}
instance Property "Subnets" VpcProperty where
  type PropertyType "Subnets" VpcProperty = ValueList Prelude.Text
  set newValue VpcProperty {..}
    = VpcProperty {subnets = newValue, ..}