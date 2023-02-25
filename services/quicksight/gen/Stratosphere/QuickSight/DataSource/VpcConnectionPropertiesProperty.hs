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
  = VpcConnectionPropertiesProperty {vpcConnectionArn :: (Value Prelude.Text)}
mkVpcConnectionPropertiesProperty ::
  Value Prelude.Text -> VpcConnectionPropertiesProperty
mkVpcConnectionPropertiesProperty vpcConnectionArn
  = VpcConnectionPropertiesProperty
      {vpcConnectionArn = vpcConnectionArn}
instance ToResourceProperties VpcConnectionPropertiesProperty where
  toResourceProperties VpcConnectionPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSource.VpcConnectionProperties",
         properties = ["VpcConnectionArn" JSON..= vpcConnectionArn]}
instance JSON.ToJSON VpcConnectionPropertiesProperty where
  toJSON VpcConnectionPropertiesProperty {..}
    = JSON.object ["VpcConnectionArn" JSON..= vpcConnectionArn]
instance Property "VpcConnectionArn" VpcConnectionPropertiesProperty where
  type PropertyType "VpcConnectionArn" VpcConnectionPropertiesProperty = Value Prelude.Text
  set newValue VpcConnectionPropertiesProperty {}
    = VpcConnectionPropertiesProperty {vpcConnectionArn = newValue, ..}