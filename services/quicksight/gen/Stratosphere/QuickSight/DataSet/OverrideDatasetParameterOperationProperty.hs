module Stratosphere.QuickSight.DataSet.OverrideDatasetParameterOperationProperty (
        module Exports, OverrideDatasetParameterOperationProperty(..),
        mkOverrideDatasetParameterOperationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.NewDefaultValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OverrideDatasetParameterOperationProperty
  = OverrideDatasetParameterOperationProperty {newDefaultValues :: (Prelude.Maybe NewDefaultValuesProperty),
                                               newParameterName :: (Prelude.Maybe (Value Prelude.Text)),
                                               parameterName :: (Value Prelude.Text)}
mkOverrideDatasetParameterOperationProperty ::
  Value Prelude.Text -> OverrideDatasetParameterOperationProperty
mkOverrideDatasetParameterOperationProperty parameterName
  = OverrideDatasetParameterOperationProperty
      {parameterName = parameterName, newDefaultValues = Prelude.Nothing,
       newParameterName = Prelude.Nothing}
instance ToResourceProperties OverrideDatasetParameterOperationProperty where
  toResourceProperties OverrideDatasetParameterOperationProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.OverrideDatasetParameterOperation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParameterName" JSON..= parameterName]
                           (Prelude.catMaybes
                              [(JSON..=) "NewDefaultValues" Prelude.<$> newDefaultValues,
                               (JSON..=) "NewParameterName" Prelude.<$> newParameterName]))}
instance JSON.ToJSON OverrideDatasetParameterOperationProperty where
  toJSON OverrideDatasetParameterOperationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParameterName" JSON..= parameterName]
              (Prelude.catMaybes
                 [(JSON..=) "NewDefaultValues" Prelude.<$> newDefaultValues,
                  (JSON..=) "NewParameterName" Prelude.<$> newParameterName])))
instance Property "NewDefaultValues" OverrideDatasetParameterOperationProperty where
  type PropertyType "NewDefaultValues" OverrideDatasetParameterOperationProperty = NewDefaultValuesProperty
  set newValue OverrideDatasetParameterOperationProperty {..}
    = OverrideDatasetParameterOperationProperty
        {newDefaultValues = Prelude.pure newValue, ..}
instance Property "NewParameterName" OverrideDatasetParameterOperationProperty where
  type PropertyType "NewParameterName" OverrideDatasetParameterOperationProperty = Value Prelude.Text
  set newValue OverrideDatasetParameterOperationProperty {..}
    = OverrideDatasetParameterOperationProperty
        {newParameterName = Prelude.pure newValue, ..}
instance Property "ParameterName" OverrideDatasetParameterOperationProperty where
  type PropertyType "ParameterName" OverrideDatasetParameterOperationProperty = Value Prelude.Text
  set newValue OverrideDatasetParameterOperationProperty {..}
    = OverrideDatasetParameterOperationProperty
        {parameterName = newValue, ..}