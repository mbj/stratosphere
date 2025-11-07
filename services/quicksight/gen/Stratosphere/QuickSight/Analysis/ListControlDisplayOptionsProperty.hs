module Stratosphere.QuickSight.Analysis.ListControlDisplayOptionsProperty (
        module Exports, ListControlDisplayOptionsProperty(..),
        mkListControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ListControlSearchOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ListControlSelectAllOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetControlInfoIconLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
data ListControlDisplayOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-listcontroldisplayoptions.html>
    ListControlDisplayOptionsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-listcontroldisplayoptions.html#cfn-quicksight-analysis-listcontroldisplayoptions-infoiconlabeloptions>
                                       infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-listcontroldisplayoptions.html#cfn-quicksight-analysis-listcontroldisplayoptions-searchoptions>
                                       searchOptions :: (Prelude.Maybe ListControlSearchOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-listcontroldisplayoptions.html#cfn-quicksight-analysis-listcontroldisplayoptions-selectalloptions>
                                       selectAllOptions :: (Prelude.Maybe ListControlSelectAllOptionsProperty),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-listcontroldisplayoptions.html#cfn-quicksight-analysis-listcontroldisplayoptions-titleoptions>
                                       titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkListControlDisplayOptionsProperty ::
  ListControlDisplayOptionsProperty
mkListControlDisplayOptionsProperty
  = ListControlDisplayOptionsProperty
      {haddock_workaround_ = (), infoIconLabelOptions = Prelude.Nothing,
       searchOptions = Prelude.Nothing,
       selectAllOptions = Prelude.Nothing, titleOptions = Prelude.Nothing}
instance ToResourceProperties ListControlDisplayOptionsProperty where
  toResourceProperties ListControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ListControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
                            (JSON..=) "SearchOptions" Prelude.<$> searchOptions,
                            (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON ListControlDisplayOptionsProperty where
  toJSON ListControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
               (JSON..=) "SearchOptions" Prelude.<$> searchOptions,
               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "InfoIconLabelOptions" ListControlDisplayOptionsProperty where
  type PropertyType "InfoIconLabelOptions" ListControlDisplayOptionsProperty = SheetControlInfoIconLabelOptionsProperty
  set newValue ListControlDisplayOptionsProperty {..}
    = ListControlDisplayOptionsProperty
        {infoIconLabelOptions = Prelude.pure newValue, ..}
instance Property "SearchOptions" ListControlDisplayOptionsProperty where
  type PropertyType "SearchOptions" ListControlDisplayOptionsProperty = ListControlSearchOptionsProperty
  set newValue ListControlDisplayOptionsProperty {..}
    = ListControlDisplayOptionsProperty
        {searchOptions = Prelude.pure newValue, ..}
instance Property "SelectAllOptions" ListControlDisplayOptionsProperty where
  type PropertyType "SelectAllOptions" ListControlDisplayOptionsProperty = ListControlSelectAllOptionsProperty
  set newValue ListControlDisplayOptionsProperty {..}
    = ListControlDisplayOptionsProperty
        {selectAllOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" ListControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" ListControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue ListControlDisplayOptionsProperty {..}
    = ListControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}