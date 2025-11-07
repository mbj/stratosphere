module Stratosphere.QuickSight.Analysis.DefaultFilterControlOptionsProperty (
        module Exports, DefaultFilterControlOptionsProperty(..),
        mkDefaultFilterControlOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultDateTimePickerControlOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultFilterDropDownControlOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultFilterListControlOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultRelativeDateTimeControlOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultSliderControlOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultTextAreaControlOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.DefaultTextFieldControlOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DefaultFilterControlOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfiltercontroloptions.html>
    DefaultFilterControlOptionsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfiltercontroloptions.html#cfn-quicksight-analysis-defaultfiltercontroloptions-defaultdatetimepickeroptions>
                                         defaultDateTimePickerOptions :: (Prelude.Maybe DefaultDateTimePickerControlOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfiltercontroloptions.html#cfn-quicksight-analysis-defaultfiltercontroloptions-defaultdropdownoptions>
                                         defaultDropdownOptions :: (Prelude.Maybe DefaultFilterDropDownControlOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfiltercontroloptions.html#cfn-quicksight-analysis-defaultfiltercontroloptions-defaultlistoptions>
                                         defaultListOptions :: (Prelude.Maybe DefaultFilterListControlOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfiltercontroloptions.html#cfn-quicksight-analysis-defaultfiltercontroloptions-defaultrelativedatetimeoptions>
                                         defaultRelativeDateTimeOptions :: (Prelude.Maybe DefaultRelativeDateTimeControlOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfiltercontroloptions.html#cfn-quicksight-analysis-defaultfiltercontroloptions-defaultslideroptions>
                                         defaultSliderOptions :: (Prelude.Maybe DefaultSliderControlOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfiltercontroloptions.html#cfn-quicksight-analysis-defaultfiltercontroloptions-defaulttextareaoptions>
                                         defaultTextAreaOptions :: (Prelude.Maybe DefaultTextAreaControlOptionsProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfiltercontroloptions.html#cfn-quicksight-analysis-defaultfiltercontroloptions-defaulttextfieldoptions>
                                         defaultTextFieldOptions :: (Prelude.Maybe DefaultTextFieldControlOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultFilterControlOptionsProperty ::
  DefaultFilterControlOptionsProperty
mkDefaultFilterControlOptionsProperty
  = DefaultFilterControlOptionsProperty
      {haddock_workaround_ = (),
       defaultDateTimePickerOptions = Prelude.Nothing,
       defaultDropdownOptions = Prelude.Nothing,
       defaultListOptions = Prelude.Nothing,
       defaultRelativeDateTimeOptions = Prelude.Nothing,
       defaultSliderOptions = Prelude.Nothing,
       defaultTextAreaOptions = Prelude.Nothing,
       defaultTextFieldOptions = Prelude.Nothing}
instance ToResourceProperties DefaultFilterControlOptionsProperty where
  toResourceProperties DefaultFilterControlOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DefaultFilterControlOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultDateTimePickerOptions"
                              Prelude.<$> defaultDateTimePickerOptions,
                            (JSON..=) "DefaultDropdownOptions"
                              Prelude.<$> defaultDropdownOptions,
                            (JSON..=) "DefaultListOptions" Prelude.<$> defaultListOptions,
                            (JSON..=) "DefaultRelativeDateTimeOptions"
                              Prelude.<$> defaultRelativeDateTimeOptions,
                            (JSON..=) "DefaultSliderOptions" Prelude.<$> defaultSliderOptions,
                            (JSON..=) "DefaultTextAreaOptions"
                              Prelude.<$> defaultTextAreaOptions,
                            (JSON..=) "DefaultTextFieldOptions"
                              Prelude.<$> defaultTextFieldOptions])}
instance JSON.ToJSON DefaultFilterControlOptionsProperty where
  toJSON DefaultFilterControlOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultDateTimePickerOptions"
                 Prelude.<$> defaultDateTimePickerOptions,
               (JSON..=) "DefaultDropdownOptions"
                 Prelude.<$> defaultDropdownOptions,
               (JSON..=) "DefaultListOptions" Prelude.<$> defaultListOptions,
               (JSON..=) "DefaultRelativeDateTimeOptions"
                 Prelude.<$> defaultRelativeDateTimeOptions,
               (JSON..=) "DefaultSliderOptions" Prelude.<$> defaultSliderOptions,
               (JSON..=) "DefaultTextAreaOptions"
                 Prelude.<$> defaultTextAreaOptions,
               (JSON..=) "DefaultTextFieldOptions"
                 Prelude.<$> defaultTextFieldOptions]))
instance Property "DefaultDateTimePickerOptions" DefaultFilterControlOptionsProperty where
  type PropertyType "DefaultDateTimePickerOptions" DefaultFilterControlOptionsProperty = DefaultDateTimePickerControlOptionsProperty
  set newValue DefaultFilterControlOptionsProperty {..}
    = DefaultFilterControlOptionsProperty
        {defaultDateTimePickerOptions = Prelude.pure newValue, ..}
instance Property "DefaultDropdownOptions" DefaultFilterControlOptionsProperty where
  type PropertyType "DefaultDropdownOptions" DefaultFilterControlOptionsProperty = DefaultFilterDropDownControlOptionsProperty
  set newValue DefaultFilterControlOptionsProperty {..}
    = DefaultFilterControlOptionsProperty
        {defaultDropdownOptions = Prelude.pure newValue, ..}
instance Property "DefaultListOptions" DefaultFilterControlOptionsProperty where
  type PropertyType "DefaultListOptions" DefaultFilterControlOptionsProperty = DefaultFilterListControlOptionsProperty
  set newValue DefaultFilterControlOptionsProperty {..}
    = DefaultFilterControlOptionsProperty
        {defaultListOptions = Prelude.pure newValue, ..}
instance Property "DefaultRelativeDateTimeOptions" DefaultFilterControlOptionsProperty where
  type PropertyType "DefaultRelativeDateTimeOptions" DefaultFilterControlOptionsProperty = DefaultRelativeDateTimeControlOptionsProperty
  set newValue DefaultFilterControlOptionsProperty {..}
    = DefaultFilterControlOptionsProperty
        {defaultRelativeDateTimeOptions = Prelude.pure newValue, ..}
instance Property "DefaultSliderOptions" DefaultFilterControlOptionsProperty where
  type PropertyType "DefaultSliderOptions" DefaultFilterControlOptionsProperty = DefaultSliderControlOptionsProperty
  set newValue DefaultFilterControlOptionsProperty {..}
    = DefaultFilterControlOptionsProperty
        {defaultSliderOptions = Prelude.pure newValue, ..}
instance Property "DefaultTextAreaOptions" DefaultFilterControlOptionsProperty where
  type PropertyType "DefaultTextAreaOptions" DefaultFilterControlOptionsProperty = DefaultTextAreaControlOptionsProperty
  set newValue DefaultFilterControlOptionsProperty {..}
    = DefaultFilterControlOptionsProperty
        {defaultTextAreaOptions = Prelude.pure newValue, ..}
instance Property "DefaultTextFieldOptions" DefaultFilterControlOptionsProperty where
  type PropertyType "DefaultTextFieldOptions" DefaultFilterControlOptionsProperty = DefaultTextFieldControlOptionsProperty
  set newValue DefaultFilterControlOptionsProperty {..}
    = DefaultFilterControlOptionsProperty
        {defaultTextFieldOptions = Prelude.pure newValue, ..}