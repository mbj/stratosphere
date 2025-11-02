module Stratosphere.CloudWatch.Alarm.DimensionProperty (
        DimensionProperty(..), mkDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DimensionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-dimension.html>
    DimensionProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-dimension.html#cfn-cloudwatch-alarm-dimension-name>
                       name :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-alarm-dimension.html#cfn-cloudwatch-alarm-dimension-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDimensionProperty ::
  Value Prelude.Text -> Value Prelude.Text -> DimensionProperty
mkDimensionProperty name value
  = DimensionProperty
      {haddock_workaround_ = (), name = name, value = value}
instance ToResourceProperties DimensionProperty where
  toResourceProperties DimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::Alarm.Dimension",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON DimensionProperty where
  toJSON DimensionProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" DimensionProperty where
  type PropertyType "Name" DimensionProperty = Value Prelude.Text
  set newValue DimensionProperty {..}
    = DimensionProperty {name = newValue, ..}
instance Property "Value" DimensionProperty where
  type PropertyType "Value" DimensionProperty = Value Prelude.Text
  set newValue DimensionProperty {..}
    = DimensionProperty {value = newValue, ..}