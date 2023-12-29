module Stratosphere.QuickSight.Dashboard.CalculatedFieldProperty (
        CalculatedFieldProperty(..), mkCalculatedFieldProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CalculatedFieldProperty
  = CalculatedFieldProperty {dataSetIdentifier :: (Value Prelude.Text),
                             expression :: (Value Prelude.Text),
                             name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCalculatedFieldProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CalculatedFieldProperty
mkCalculatedFieldProperty dataSetIdentifier expression name
  = CalculatedFieldProperty
      {dataSetIdentifier = dataSetIdentifier, expression = expression,
       name = name}
instance ToResourceProperties CalculatedFieldProperty where
  toResourceProperties CalculatedFieldProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.CalculatedField",
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