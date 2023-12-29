module Stratosphere.WAFv2.LoggingConfiguration.LabelNameConditionProperty (
        LabelNameConditionProperty(..), mkLabelNameConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LabelNameConditionProperty
  = LabelNameConditionProperty {labelName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLabelNameConditionProperty ::
  Value Prelude.Text -> LabelNameConditionProperty
mkLabelNameConditionProperty labelName
  = LabelNameConditionProperty {labelName = labelName}
instance ToResourceProperties LabelNameConditionProperty where
  toResourceProperties LabelNameConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::WAFv2::LoggingConfiguration.LabelNameCondition",
         supportsTags = Prelude.False,
         properties = ["LabelName" JSON..= labelName]}
instance JSON.ToJSON LabelNameConditionProperty where
  toJSON LabelNameConditionProperty {..}
    = JSON.object ["LabelName" JSON..= labelName]
instance Property "LabelName" LabelNameConditionProperty where
  type PropertyType "LabelName" LabelNameConditionProperty = Value Prelude.Text
  set newValue LabelNameConditionProperty {}
    = LabelNameConditionProperty {labelName = newValue, ..}