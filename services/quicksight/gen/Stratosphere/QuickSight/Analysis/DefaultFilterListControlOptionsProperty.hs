module Stratosphere.QuickSight.Analysis.DefaultFilterListControlOptionsProperty (
        module Exports, DefaultFilterListControlOptionsProperty(..),
        mkDefaultFilterListControlOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.FilterSelectableValuesProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ListControlDisplayOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultFilterListControlOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfilterlistcontroloptions.html>
    DefaultFilterListControlOptionsProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfilterlistcontroloptions.html#cfn-quicksight-analysis-defaultfilterlistcontroloptions-displayoptions>
                                             displayOptions :: (Prelude.Maybe ListControlDisplayOptionsProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfilterlistcontroloptions.html#cfn-quicksight-analysis-defaultfilterlistcontroloptions-selectablevalues>
                                             selectableValues :: (Prelude.Maybe FilterSelectableValuesProperty),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-defaultfilterlistcontroloptions.html#cfn-quicksight-analysis-defaultfilterlistcontroloptions-type>
                                             type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDefaultFilterListControlOptionsProperty ::
  DefaultFilterListControlOptionsProperty
mkDefaultFilterListControlOptionsProperty
  = DefaultFilterListControlOptionsProperty
      {haddock_workaround_ = (), displayOptions = Prelude.Nothing,
       selectableValues = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties DefaultFilterListControlOptionsProperty where
  toResourceProperties DefaultFilterListControlOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DefaultFilterListControlOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
                            (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON DefaultFilterListControlOptionsProperty where
  toJSON DefaultFilterListControlOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DisplayOptions" Prelude.<$> displayOptions,
               (JSON..=) "SelectableValues" Prelude.<$> selectableValues,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "DisplayOptions" DefaultFilterListControlOptionsProperty where
  type PropertyType "DisplayOptions" DefaultFilterListControlOptionsProperty = ListControlDisplayOptionsProperty
  set newValue DefaultFilterListControlOptionsProperty {..}
    = DefaultFilterListControlOptionsProperty
        {displayOptions = Prelude.pure newValue, ..}
instance Property "SelectableValues" DefaultFilterListControlOptionsProperty where
  type PropertyType "SelectableValues" DefaultFilterListControlOptionsProperty = FilterSelectableValuesProperty
  set newValue DefaultFilterListControlOptionsProperty {..}
    = DefaultFilterListControlOptionsProperty
        {selectableValues = Prelude.pure newValue, ..}
instance Property "Type" DefaultFilterListControlOptionsProperty where
  type PropertyType "Type" DefaultFilterListControlOptionsProperty = Value Prelude.Text
  set newValue DefaultFilterListControlOptionsProperty {..}
    = DefaultFilterListControlOptionsProperty
        {type' = Prelude.pure newValue, ..}