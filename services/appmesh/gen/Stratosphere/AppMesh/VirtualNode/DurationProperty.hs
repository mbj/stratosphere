module Stratosphere.AppMesh.VirtualNode.DurationProperty (
        DurationProperty(..), mkDurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-duration.html>
    DurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-duration.html#cfn-appmesh-virtualnode-duration-unit>
                      unit :: (Value Prelude.Text),
                      -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-duration.html#cfn-appmesh-virtualnode-duration-value>
                      value :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDurationProperty ::
  Value Prelude.Text -> Value Prelude.Integer -> DurationProperty
mkDurationProperty unit value
  = DurationProperty {unit = unit, value = value}
instance ToResourceProperties DurationProperty where
  toResourceProperties DurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.Duration",
         supportsTags = Prelude.False,
         properties = ["Unit" JSON..= unit, "Value" JSON..= value]}
instance JSON.ToJSON DurationProperty where
  toJSON DurationProperty {..}
    = JSON.object ["Unit" JSON..= unit, "Value" JSON..= value]
instance Property "Unit" DurationProperty where
  type PropertyType "Unit" DurationProperty = Value Prelude.Text
  set newValue DurationProperty {..}
    = DurationProperty {unit = newValue, ..}
instance Property "Value" DurationProperty where
  type PropertyType "Value" DurationProperty = Value Prelude.Integer
  set newValue DurationProperty {..}
    = DurationProperty {value = newValue, ..}