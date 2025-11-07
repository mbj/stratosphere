module Stratosphere.RTBFabric.Link.FilterCriterionProperty (
        FilterCriterionProperty(..), mkFilterCriterionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FilterCriterionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-filtercriterion.html>
    FilterCriterionProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-filtercriterion.html#cfn-rtbfabric-link-filtercriterion-path>
                             path :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-rtbfabric-link-filtercriterion.html#cfn-rtbfabric-link-filtercriterion-values>
                             values :: (ValueList Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilterCriterionProperty ::
  Value Prelude.Text
  -> ValueList Prelude.Text -> FilterCriterionProperty
mkFilterCriterionProperty path values
  = FilterCriterionProperty
      {haddock_workaround_ = (), path = path, values = values}
instance ToResourceProperties FilterCriterionProperty where
  toResourceProperties FilterCriterionProperty {..}
    = ResourceProperties
        {awsType = "AWS::RTBFabric::Link.FilterCriterion",
         supportsTags = Prelude.False,
         properties = ["Path" JSON..= path, "Values" JSON..= values]}
instance JSON.ToJSON FilterCriterionProperty where
  toJSON FilterCriterionProperty {..}
    = JSON.object ["Path" JSON..= path, "Values" JSON..= values]
instance Property "Path" FilterCriterionProperty where
  type PropertyType "Path" FilterCriterionProperty = Value Prelude.Text
  set newValue FilterCriterionProperty {..}
    = FilterCriterionProperty {path = newValue, ..}
instance Property "Values" FilterCriterionProperty where
  type PropertyType "Values" FilterCriterionProperty = ValueList Prelude.Text
  set newValue FilterCriterionProperty {..}
    = FilterCriterionProperty {values = newValue, ..}