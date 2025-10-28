module Stratosphere.QuickSight.DataSet.DateTimeDatasetParameterProperty (
        module Exports, DateTimeDatasetParameterProperty(..),
        mkDateTimeDatasetParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.DateTimeDatasetParameterDefaultValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DateTimeDatasetParameterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameter.html>
    DateTimeDatasetParameterProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameter.html#cfn-quicksight-dataset-datetimedatasetparameter-defaultvalues>
                                      defaultValues :: (Prelude.Maybe DateTimeDatasetParameterDefaultValuesProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameter.html#cfn-quicksight-dataset-datetimedatasetparameter-id>
                                      id :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameter.html#cfn-quicksight-dataset-datetimedatasetparameter-name>
                                      name :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameter.html#cfn-quicksight-dataset-datetimedatasetparameter-timegranularity>
                                      timeGranularity :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dataset-datetimedatasetparameter.html#cfn-quicksight-dataset-datetimedatasetparameter-valuetype>
                                      valueType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDateTimeDatasetParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> DateTimeDatasetParameterProperty
mkDateTimeDatasetParameterProperty id name valueType
  = DateTimeDatasetParameterProperty
      {haddock_workaround_ = (), id = id, name = name,
       valueType = valueType, defaultValues = Prelude.Nothing,
       timeGranularity = Prelude.Nothing}
instance ToResourceProperties DateTimeDatasetParameterProperty where
  toResourceProperties DateTimeDatasetParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.DateTimeDatasetParameter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Id" JSON..= id, "Name" JSON..= name,
                            "ValueType" JSON..= valueType]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValues" Prelude.<$> defaultValues,
                               (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity]))}
instance JSON.ToJSON DateTimeDatasetParameterProperty where
  toJSON DateTimeDatasetParameterProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Id" JSON..= id, "Name" JSON..= name,
               "ValueType" JSON..= valueType]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValues" Prelude.<$> defaultValues,
                  (JSON..=) "TimeGranularity" Prelude.<$> timeGranularity])))
instance Property "DefaultValues" DateTimeDatasetParameterProperty where
  type PropertyType "DefaultValues" DateTimeDatasetParameterProperty = DateTimeDatasetParameterDefaultValuesProperty
  set newValue DateTimeDatasetParameterProperty {..}
    = DateTimeDatasetParameterProperty
        {defaultValues = Prelude.pure newValue, ..}
instance Property "Id" DateTimeDatasetParameterProperty where
  type PropertyType "Id" DateTimeDatasetParameterProperty = Value Prelude.Text
  set newValue DateTimeDatasetParameterProperty {..}
    = DateTimeDatasetParameterProperty {id = newValue, ..}
instance Property "Name" DateTimeDatasetParameterProperty where
  type PropertyType "Name" DateTimeDatasetParameterProperty = Value Prelude.Text
  set newValue DateTimeDatasetParameterProperty {..}
    = DateTimeDatasetParameterProperty {name = newValue, ..}
instance Property "TimeGranularity" DateTimeDatasetParameterProperty where
  type PropertyType "TimeGranularity" DateTimeDatasetParameterProperty = Value Prelude.Text
  set newValue DateTimeDatasetParameterProperty {..}
    = DateTimeDatasetParameterProperty
        {timeGranularity = Prelude.pure newValue, ..}
instance Property "ValueType" DateTimeDatasetParameterProperty where
  type PropertyType "ValueType" DateTimeDatasetParameterProperty = Value Prelude.Text
  set newValue DateTimeDatasetParameterProperty {..}
    = DateTimeDatasetParameterProperty {valueType = newValue, ..}