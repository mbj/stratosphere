module Stratosphere.QuickSight.Dashboard.CalculatedMeasureFieldProperty (
        CalculatedMeasureFieldProperty(..),
        mkCalculatedMeasureFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CalculatedMeasureFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-calculatedmeasurefield.html>
    CalculatedMeasureFieldProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-calculatedmeasurefield.html#cfn-quicksight-dashboard-calculatedmeasurefield-expression>
                                    expression :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-calculatedmeasurefield.html#cfn-quicksight-dashboard-calculatedmeasurefield-fieldid>
                                    fieldId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCalculatedMeasureFieldProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> CalculatedMeasureFieldProperty
mkCalculatedMeasureFieldProperty expression fieldId
  = CalculatedMeasureFieldProperty
      {haddock_workaround_ = (), expression = expression,
       fieldId = fieldId}
instance ToResourceProperties CalculatedMeasureFieldProperty where
  toResourceProperties CalculatedMeasureFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CalculatedMeasureField",
         supportsTags = Prelude.False,
         properties = ["Expression" JSON..= expression,
                       "FieldId" JSON..= fieldId]}
instance JSON.ToJSON CalculatedMeasureFieldProperty where
  toJSON CalculatedMeasureFieldProperty {..}
    = JSON.object
        ["Expression" JSON..= expression, "FieldId" JSON..= fieldId]
instance Property "Expression" CalculatedMeasureFieldProperty where
  type PropertyType "Expression" CalculatedMeasureFieldProperty = Value Prelude.Text
  set newValue CalculatedMeasureFieldProperty {..}
    = CalculatedMeasureFieldProperty {expression = newValue, ..}
instance Property "FieldId" CalculatedMeasureFieldProperty where
  type PropertyType "FieldId" CalculatedMeasureFieldProperty = Value Prelude.Text
  set newValue CalculatedMeasureFieldProperty {..}
    = CalculatedMeasureFieldProperty {fieldId = newValue, ..}