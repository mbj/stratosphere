module Stratosphere.QuickSight.Analysis.ParameterDropDownControlProperty (
        module Exports, ParameterDropDownControlProperty(..),
        mkParameterDropDownControlProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.CascadingControlConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DropDownControlDisplayOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ParameterSelectableValuesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ParameterDropDownControlProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterdropdowncontrol.html>
    ParameterDropDownControlProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterdropdowncontrol.html#cfn-quicksight-analysis-parameterdropdowncontrol-cascadingcontrolconfiguration>
                                      cascadingControlConfiguration :: (Prelude.Maybe CascadingControlConfigurationProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterdropdowncontrol.html#cfn-quicksight-analysis-parameterdropdowncontrol-commitmode>
                                      commitMode :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterdropdowncontrol.html#cfn-quicksight-analysis-parameterdropdowncontrol-displayoptions>
                                      displayOptions :: (Prelude.Maybe DropDownControlDisplayOptionsProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterdropdowncontrol.html#cfn-quicksight-analysis-parameterdropdowncontrol-parametercontrolid>
                                      parameterControlId :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterdropdowncontrol.html#cfn-quicksight-analysis-parameterdropdowncontrol-selectablevalues>
                                      selectableValues :: (Prelude.Maybe ParameterSelectableValuesProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterdropdowncontrol.html#cfn-quicksight-analysis-parameterdropdowncontrol-sourceparametername>
                                      sourceParameterName :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterdropdowncontrol.html#cfn-quicksight-analysis-parameterdropdowncontrol-title>
                                      title :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-parameterdropdowncontrol.html#cfn-quicksight-analysis-parameterdropdowncontrol-type>
                                      type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkParameterDropDownControlProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ParameterDropDownControlProperty
mkParameterDropDownControlProperty
  parameterControlId
  sourceParameterName
  title
  = ParameterDropDownControlProperty
      {haddock_workaround_ = (), parameterControlId = parameterControlId,
       sourceParameterName = sourceParameterName, title = title,
       cascadingControlConfiguration = Prelude.Nothing,
       commitMode = Prelude.Nothing, displayOptions = Prelude.Nothing,
       selectableValues = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties ParameterDropDownControlProperty where
  toResourceProperties ParameterDropDownControlProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ParameterDropDownControl",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ParameterControlId" JSON..= parameterControlId,
                            "SourceParameterName" JSON..= sourceParameterName,
                            "Title" JSON..= title]
                           (Prelude.catMaybes
                              [(JSON..=) "CascadingControlConfiguration"
                                 Prelude.<$> cascadingControlConfiguration,
                               (JSON..=) "CommitMode" Prelude.<$> commitMode,
                               (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                               (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                               (JSON..=) "Type" Prelude.<$> type']))}
instance JSON.ToJSON ParameterDropDownControlProperty where
  toJSON ParameterDropDownControlProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ParameterControlId" JSON..= parameterControlId,
               "SourceParameterName" JSON..= sourceParameterName,
               "Title" JSON..= title]
              (Prelude.catMaybes
                 [(JSON..=) "CascadingControlConfiguration"
                    Prelude.<$> cascadingControlConfiguration,
                  (JSON..=) "CommitMode" Prelude.<$> commitMode,
                  (JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                  (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                  (JSON..=) "Type" Prelude.<$> type'])))
instance Property "CascadingControlConfiguration" ParameterDropDownControlProperty where
  type PropertyType "CascadingControlConfiguration" ParameterDropDownControlProperty = CascadingControlConfigurationProperty
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {cascadingControlConfiguration = Prelude.pure newValue, ..}
instance Property "CommitMode" ParameterDropDownControlProperty where
  type PropertyType "CommitMode" ParameterDropDownControlProperty = Value Prelude.Text
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {commitMode = Prelude.pure newValue, ..}
instance Property "DisplayOptions" ParameterDropDownControlProperty where
  type PropertyType "DisplayOptions" ParameterDropDownControlProperty = DropDownControlDisplayOptionsProperty
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "ParameterControlId" ParameterDropDownControlProperty where
  type PropertyType "ParameterControlId" ParameterDropDownControlProperty = Value Prelude.Text
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {parameterControlId = newValue, ..}
instance Property "SelectableValues" ParameterDropDownControlProperty where
  type PropertyType "SelectableValues" ParameterDropDownControlProperty = ParameterSelectableValuesProperty
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {selectableValues = Prelude.pure newValue, ..}
instance Property "SourceParameterName" ParameterDropDownControlProperty where
  type PropertyType "SourceParameterName" ParameterDropDownControlProperty = Value Prelude.Text
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {sourceParameterName = newValue, ..}
instance Property "Title" ParameterDropDownControlProperty where
  type PropertyType "Title" ParameterDropDownControlProperty = Value Prelude.Text
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty {title = newValue, ..}
instance Property "Type" ParameterDropDownControlProperty where
  type PropertyType "Type" ParameterDropDownControlProperty = Value Prelude.Text
  set newValue ParameterDropDownControlProperty {..}
    = ParameterDropDownControlProperty
        {type' = Prelude.pure newValue, ..}