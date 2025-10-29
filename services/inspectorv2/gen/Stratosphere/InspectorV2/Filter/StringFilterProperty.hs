module Stratosphere.InspectorV2.Filter.StringFilterProperty (
        StringFilterProperty(..), mkStringFilterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringFilterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-stringfilter.html>
    StringFilterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-stringfilter.html#cfn-inspectorv2-filter-stringfilter-comparison>
                          comparison :: (Value Prelude.Text),
                          -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-filter-stringfilter.html#cfn-inspectorv2-filter-stringfilter-value>
                          value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStringFilterProperty ::
  Value Prelude.Text -> Value Prelude.Text -> StringFilterProperty
mkStringFilterProperty comparison value
  = StringFilterProperty {comparison = comparison, value = value}
instance ToResourceProperties StringFilterProperty where
  toResourceProperties StringFilterProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::Filter.StringFilter",
         supportsTags = Prelude.False,
         properties = ["Comparison" JSON..= comparison,
                       "Value" JSON..= value]}
instance JSON.ToJSON StringFilterProperty where
  toJSON StringFilterProperty {..}
    = JSON.object
        ["Comparison" JSON..= comparison, "Value" JSON..= value]
instance Property "Comparison" StringFilterProperty where
  type PropertyType "Comparison" StringFilterProperty = Value Prelude.Text
  set newValue StringFilterProperty {..}
    = StringFilterProperty {comparison = newValue, ..}
instance Property "Value" StringFilterProperty where
  type PropertyType "Value" StringFilterProperty = Value Prelude.Text
  set newValue StringFilterProperty {..}
    = StringFilterProperty {value = newValue, ..}