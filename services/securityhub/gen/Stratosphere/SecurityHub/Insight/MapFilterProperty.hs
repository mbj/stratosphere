module Stratosphere.SecurityHub.Insight.MapFilterProperty (
        MapFilterProperty(..), mkMapFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MapFilterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-mapfilter.html>
    MapFilterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-mapfilter.html#cfn-securityhub-insight-mapfilter-comparison>
                       comparison :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-mapfilter.html#cfn-securityhub-insight-mapfilter-key>
                       key :: (Value Prelude.Text),
                       -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-securityhub-insight-mapfilter.html#cfn-securityhub-insight-mapfilter-value>
                       value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMapFilterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> MapFilterProperty
mkMapFilterProperty comparison key value
  = MapFilterProperty
      {comparison = comparison, key = key, value = value}
instance ToResourceProperties MapFilterProperty where
  toResourceProperties MapFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::Insight.MapFilter",
         supportsTags = Prelude.False,
         properties = ["Comparison" JSON..= comparison, "Key" JSON..= key,
                       "Value" JSON..= value]}
instance JSON.ToJSON MapFilterProperty where
  toJSON MapFilterProperty {..}
    = JSON.object
        ["Comparison" JSON..= comparison, "Key" JSON..= key,
         "Value" JSON..= value]
instance Property "Comparison" MapFilterProperty where
  type PropertyType "Comparison" MapFilterProperty = Value Prelude.Text
  set newValue MapFilterProperty {..}
    = MapFilterProperty {comparison = newValue, ..}
instance Property "Key" MapFilterProperty where
  type PropertyType "Key" MapFilterProperty = Value Prelude.Text
  set newValue MapFilterProperty {..}
    = MapFilterProperty {key = newValue, ..}
instance Property "Value" MapFilterProperty where
  type PropertyType "Value" MapFilterProperty = Value Prelude.Text
  set newValue MapFilterProperty {..}
    = MapFilterProperty {value = newValue, ..}