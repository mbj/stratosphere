module Stratosphere.QuickSight.DataSet.IntegerDatasetParameterProperty (
        module Exports, IntegerDatasetParameterProperty(..),
        mkIntegerDatasetParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.IntegerDatasetParameterDefaultValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IntegerDatasetParameterProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-integerdatasetparameter.html>
    IntegerDatasetParameterProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-integerdatasetparameter.html#cfn-quicksight-dataset-integerdatasetparameter-defaultvalues>
                                     defaultValues :: (Prelude.Maybe IntegerDatasetParameterDefaultValuesProperty),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-integerdatasetparameter.html#cfn-quicksight-dataset-integerdatasetparameter-id>
                                     id :: (Value Prelude.Text),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-integerdatasetparameter.html#cfn-quicksight-dataset-integerdatasetparameter-name>
                                     name :: (Value Prelude.Text),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-integerdatasetparameter.html#cfn-quicksight-dataset-integerdatasetparameter-valuetype>
                                     valueType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntegerDatasetParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> IntegerDatasetParameterProperty
mkIntegerDatasetParameterProperty id name valueType
  = IntegerDatasetParameterProperty
      {id = id, name = name, valueType = valueType,
       defaultValues = Prelude.Nothing}
instance ToResourceProperties IntegerDatasetParameterProperty where
  toResourceProperties IntegerDatasetParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.IntegerDatasetParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "Name" JSON..= name,
                            "ValueType" JSON..= valueType]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValues" Prelude.<$> defaultValues]))}
instance JSON.ToJSON IntegerDatasetParameterProperty where
  toJSON IntegerDatasetParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "Name" JSON..= name,
               "ValueType" JSON..= valueType]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValues" Prelude.<$> defaultValues])))
instance Property "DefaultValues" IntegerDatasetParameterProperty where
  type PropertyType "DefaultValues" IntegerDatasetParameterProperty = IntegerDatasetParameterDefaultValuesProperty
  set newValue IntegerDatasetParameterProperty {..}
    = IntegerDatasetParameterProperty
        {defaultValues = Prelude.pure newValue, ..}
instance Property "Id" IntegerDatasetParameterProperty where
  type PropertyType "Id" IntegerDatasetParameterProperty = Value Prelude.Text
  set newValue IntegerDatasetParameterProperty {..}
    = IntegerDatasetParameterProperty {id = newValue, ..}
instance Property "Name" IntegerDatasetParameterProperty where
  type PropertyType "Name" IntegerDatasetParameterProperty = Value Prelude.Text
  set newValue IntegerDatasetParameterProperty {..}
    = IntegerDatasetParameterProperty {name = newValue, ..}
instance Property "ValueType" IntegerDatasetParameterProperty where
  type PropertyType "ValueType" IntegerDatasetParameterProperty = Value Prelude.Text
  set newValue IntegerDatasetParameterProperty {..}
    = IntegerDatasetParameterProperty {valueType = newValue, ..}