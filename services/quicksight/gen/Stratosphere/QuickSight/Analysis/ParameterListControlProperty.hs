module Stratosphere.QuickSight.Analysis.ParameterListControlProperty (
        module Exports, ParameterListControlProperty(..),
        mkParameterListControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CascadingControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ListControlDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ParameterSelectableValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterListControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterlistcontrol.html>
    ParameterListControlProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterlistcontrol.html#cfn-quicksight-analysis-parameterlistcontrol-cascadingcontrolconfiguration>
                                  cascadingControlConfiguration :: (Prelude.Maybe CascadingControlConfigurationProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterlistcontrol.html#cfn-quicksight-analysis-parameterlistcontrol-displayoptions>
                                  displayOptions :: (Prelude.Maybe ListControlDisplayOptionsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterlistcontrol.html#cfn-quicksight-analysis-parameterlistcontrol-parametercontrolid>
                                  parameterControlId :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterlistcontrol.html#cfn-quicksight-analysis-parameterlistcontrol-selectablevalues>
                                  selectableValues :: (Prelude.Maybe ParameterSelectableValuesProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterlistcontrol.html#cfn-quicksight-analysis-parameterlistcontrol-sourceparametername>
                                  sourceParameterName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterlistcontrol.html#cfn-quicksight-analysis-parameterlistcontrol-title>
                                  title :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterlistcontrol.html#cfn-quicksight-analysis-parameterlistcontrol-type>
                                  type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterListControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ParameterListControlProperty
mkParameterListControlProperty
  parameterControlId
  sourceParameterName
  title
  = ParameterListControlProperty
      {haddock_workaround_ = (), parameterControlId = parameterControlId,
       sourceParameterName = sourceParameterName, title = title,
       cascadingControlConfiguration = Prelude.Nothing,
       displayOptions = Prelude.Nothing,
       selectableValues = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ParameterListControlProperty where
  toResourceProperties ParameterListControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ParameterListControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParameterControlId" JSON..= parameterControlId,
                            "SourceParameterName" JSON..= sourceParameterName,
                            "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "CascadingControlConfiguration"
                                 Prelude.<$> cascadingControlConfiguration,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON ParameterListControlProperty where
  toJSON ParameterListControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParameterControlId" JSON..= parameterControlId,
               "SourceParameterName" JSON..= sourceParameterName,
               "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "CascadingControlConfiguration"
                    Prelude.<$> cascadingControlConfiguration,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "CascadingControlConfiguration" ParameterListControlProperty where
  type PropertyType "CascadingControlConfiguration" ParameterListControlProperty = CascadingControlConfigurationProperty
  set newValue ParameterListControlProperty {..}
    = ParameterListControlProperty
        {cascadingControlConfiguration = Prelude.pure newValue, ..}
instance Property "DisplayOptions" ParameterListControlProperty where
  type PropertyType "DisplayOptions" ParameterListControlProperty = ListControlDisplayOptionsProperty
  set newValue ParameterListControlProperty {..}
    = ParameterListControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "ParameterControlId" ParameterListControlProperty where
  type PropertyType "ParameterControlId" ParameterListControlProperty = Value Prelude.Text
  set newValue ParameterListControlProperty {..}
    = ParameterListControlProperty {parameterControlId = newValue, ..}
instance Property "SelectableValues" ParameterListControlProperty where
  type PropertyType "SelectableValues" ParameterListControlProperty = ParameterSelectableValuesProperty
  set newValue ParameterListControlProperty {..}
    = ParameterListControlProperty
        {selectableValues = Prelude.pure newValue, ..}
instance Property "SourceParameterName" ParameterListControlProperty where
  type PropertyType "SourceParameterName" ParameterListControlProperty = Value Prelude.Text
  set newValue ParameterListControlProperty {..}
    = ParameterListControlProperty {sourceParameterName = newValue, ..}
instance Property "Title" ParameterListControlProperty where
  type PropertyType "Title" ParameterListControlProperty = Value Prelude.Text
  set newValue ParameterListControlProperty {..}
    = ParameterListControlProperty {title = newValue, ..}
instance Property "Type" ParameterListControlProperty where
  type PropertyType "Type" ParameterListControlProperty = Value Prelude.Text
  set newValue ParameterListControlProperty {..}
    = ParameterListControlProperty {type' = Prelude.pure newValue, ..}