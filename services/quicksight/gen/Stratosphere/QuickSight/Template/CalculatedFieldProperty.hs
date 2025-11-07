module Stratosphere.QuickSight.Template.CalculatedFieldProperty (
        CalculatedFieldProperty(..), mkCalculatedFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CalculatedFieldProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-calculatedfield.html>
    CalculatedFieldProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-calculatedfield.html#cfn-quicksight-template-calculatedfield-datasetidentifier>
                             dataSetIdentifier :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-calculatedfield.html#cfn-quicksight-template-calculatedfield-expression>
                             expression :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-calculatedfield.html#cfn-quicksight-template-calculatedfield-name>
                             name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCalculatedFieldProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CalculatedFieldProperty
mkCalculatedFieldProperty dataSetIdentifier expression name
  = CalculatedFieldProperty
      {haddock_workaround_ = (), dataSetIdentifier = dataSetIdentifier,
       expression = expression, name = name}
instance ToResourceProperties CalculatedFieldProperty where
  toResourceProperties CalculatedFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.CalculatedField",
         supportsTags = Prelude.False,
         properties = ["DataSetIdentifier" JSON..= dataSetIdentifier,
                       "Expression" JSON..= expression, "Name" JSON..= name]}
instance JSON.ToJSON CalculatedFieldProperty where
  toJSON CalculatedFieldProperty {..}
    = JSON.object
        ["DataSetIdentifier" JSON..= dataSetIdentifier,
         "Expression" JSON..= expression, "Name" JSON..= name]
instance Property "DataSetIdentifier" CalculatedFieldProperty where
  type PropertyType "DataSetIdentifier" CalculatedFieldProperty = Value Prelude.Text
  set newValue CalculatedFieldProperty {..}
    = CalculatedFieldProperty {dataSetIdentifier = newValue, ..}
instance Property "Expression" CalculatedFieldProperty where
  type PropertyType "Expression" CalculatedFieldProperty = Value Prelude.Text
  set newValue CalculatedFieldProperty {..}
    = CalculatedFieldProperty {expression = newValue, ..}
instance Property "Name" CalculatedFieldProperty where
  type PropertyType "Name" CalculatedFieldProperty = Value Prelude.Text
  set newValue CalculatedFieldProperty {..}
    = CalculatedFieldProperty {name = newValue, ..}