module Stratosphere.QuickSight.DataSet.DecimalDatasetParameterProperty (
        module Exports, DecimalDatasetParameterProperty(..),
        mkDecimalDatasetParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.DecimalDatasetParameterDefaultValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DecimalDatasetParameterProperty
  = DecimalDatasetParameterProperty {defaultValues :: (Prelude.Maybe DecimalDatasetParameterDefaultValuesProperty),
                                     id :: (Value Prelude.Text),
                                     name :: (Value Prelude.Text),
                                     valueType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDecimalDatasetParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DecimalDatasetParameterProperty
mkDecimalDatasetParameterProperty id name valueType
  = DecimalDatasetParameterProperty
      {id = id, name = name, valueType = valueType,
       defaultValues = Prelude.Nothing}
instance ToResourceProperties DecimalDatasetParameterProperty where
  toResourceProperties DecimalDatasetParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.DecimalDatasetParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "Name" JSON..= name,
                            "ValueType" JSON..= valueType]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValues" Prelude.<$> defaultValues]))}
instance JSON.ToJSON DecimalDatasetParameterProperty where
  toJSON DecimalDatasetParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "Name" JSON..= name,
               "ValueType" JSON..= valueType]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValues" Prelude.<$> defaultValues])))
instance Property "DefaultValues" DecimalDatasetParameterProperty where
  type PropertyType "DefaultValues" DecimalDatasetParameterProperty = DecimalDatasetParameterDefaultValuesProperty
  set newValue DecimalDatasetParameterProperty {..}
    = DecimalDatasetParameterProperty
        {defaultValues = Prelude.pure newValue, ..}
instance Property "Id" DecimalDatasetParameterProperty where
  type PropertyType "Id" DecimalDatasetParameterProperty = Value Prelude.Text
  set newValue DecimalDatasetParameterProperty {..}
    = DecimalDatasetParameterProperty {id = newValue, ..}
instance Property "Name" DecimalDatasetParameterProperty where
  type PropertyType "Name" DecimalDatasetParameterProperty = Value Prelude.Text
  set newValue DecimalDatasetParameterProperty {..}
    = DecimalDatasetParameterProperty {name = newValue, ..}
instance Property "ValueType" DecimalDatasetParameterProperty where
  type PropertyType "ValueType" DecimalDatasetParameterProperty = Value Prelude.Text
  set newValue DecimalDatasetParameterProperty {..}
    = DecimalDatasetParameterProperty {valueType = newValue, ..}