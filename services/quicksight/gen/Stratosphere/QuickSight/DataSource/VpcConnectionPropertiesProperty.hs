module Stratosphere.QuickSight.DataSource.VpcConnectionPropertiesProperty (
        VpcConnectionPropertiesProperty(..),
        mkVpcConnectionPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VpcConnectionPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-vpcconnectionproperties.html>
    VpcConnectionPropertiesProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-datasource-vpcconnectionproperties.html#cfn-quicksight-datasource-vpcconnectionproperties-vpcconnectionarn>
                                     vpcConnectionArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVpcConnectionPropertiesProperty ::
  Value Prelude.Text -> VpcConnectionPropertiesProperty
mkVpcConnectionPropertiesProperty vpcConnectionArn
  = VpcConnectionPropertiesProperty
      {haddock_workaround_ = (), vpcConnectionArn = vpcConnectionArn}
instance ToResourceProperties VpcConnectionPropertiesProperty where
  toResourceProperties VpcConnectionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.VpcConnectionProperties",
         supportsTags = Prelude.False,
         properties = ["VpcConnectionArn" JSON..= vpcConnectionArn]}
instance JSON.ToJSON VpcConnectionPropertiesProperty where
  toJSON VpcConnectionPropertiesProperty {..}
    = JSON.object ["VpcConnectionArn" JSON..= vpcConnectionArn]
instance Property "VpcConnectionArn" VpcConnectionPropertiesProperty where
  type PropertyType "VpcConnectionArn" VpcConnectionPropertiesProperty = Value Prelude.Text
  set newValue VpcConnectionPropertiesProperty {..}
    = VpcConnectionPropertiesProperty {vpcConnectionArn = newValue, ..}