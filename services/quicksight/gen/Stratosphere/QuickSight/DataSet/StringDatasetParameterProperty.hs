module Stratosphere.QuickSight.DataSet.StringDatasetParameterProperty (
        module Exports, StringDatasetParameterProperty(..),
        mkStringDatasetParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.StringDatasetParameterDefaultValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StringDatasetParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-stringdatasetparameter.html>
    StringDatasetParameterProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-stringdatasetparameter.html#cfn-quicksight-dataset-stringdatasetparameter-defaultvalues>
                                    defaultValues :: (Prelude.Maybe StringDatasetParameterDefaultValuesProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-stringdatasetparameter.html#cfn-quicksight-dataset-stringdatasetparameter-id>
                                    id :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-stringdatasetparameter.html#cfn-quicksight-dataset-stringdatasetparameter-name>
                                    name :: (Value Prelude.Text),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-stringdatasetparameter.html#cfn-quicksight-dataset-stringdatasetparameter-valuetype>
                                    valueType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStringDatasetParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> StringDatasetParameterProperty
mkStringDatasetParameterProperty id name valueType
  = StringDatasetParameterProperty
      {haddock_workaround_ = (), id = id, name = name,
       valueType = valueType, defaultValues = Prelude.Nothing}
instance ToResourceProperties StringDatasetParameterProperty where
  toResourceProperties StringDatasetParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.StringDatasetParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "Name" JSON..= name,
                            "ValueType" JSON..= valueType]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValues" Prelude.<$> defaultValues]))}
instance JSON.ToJSON StringDatasetParameterProperty where
  toJSON StringDatasetParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "Name" JSON..= name,
               "ValueType" JSON..= valueType]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValues" Prelude.<$> defaultValues])))
instance Property "DefaultValues" StringDatasetParameterProperty where
  type PropertyType "DefaultValues" StringDatasetParameterProperty = StringDatasetParameterDefaultValuesProperty
  set newValue StringDatasetParameterProperty {..}
    = StringDatasetParameterProperty
        {defaultValues = Prelude.pure newValue, ..}
instance Property "Id" StringDatasetParameterProperty where
  type PropertyType "Id" StringDatasetParameterProperty = Value Prelude.Text
  set newValue StringDatasetParameterProperty {..}
    = StringDatasetParameterProperty {id = newValue, ..}
instance Property "Name" StringDatasetParameterProperty where
  type PropertyType "Name" StringDatasetParameterProperty = Value Prelude.Text
  set newValue StringDatasetParameterProperty {..}
    = StringDatasetParameterProperty {name = newValue, ..}
instance Property "ValueType" StringDatasetParameterProperty where
  type PropertyType "ValueType" StringDatasetParameterProperty = Value Prelude.Text
  set newValue StringDatasetParameterProperty {..}
    = StringDatasetParameterProperty {valueType = newValue, ..}