module Stratosphere.QuickSight.Analysis.DropDownControlDisplayOptionsProperty (
        module Exports, DropDownControlDisplayOptionsProperty(..),
        mkDropDownControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ListControlSelectAllOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetControlInfoIconLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
data DropDownControlDisplayOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dropdowncontroldisplayoptions.html>
    DropDownControlDisplayOptionsProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dropdowncontroldisplayoptions.html#cfn-quicksight-analysis-dropdowncontroldisplayoptions-infoiconlabeloptions>
                                           infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dropdowncontroldisplayoptions.html#cfn-quicksight-analysis-dropdowncontroldisplayoptions-selectalloptions>
                                           selectAllOptions :: (Prelude.Maybe ListControlSelectAllOptionsProperty),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-dropdowncontroldisplayoptions.html#cfn-quicksight-analysis-dropdowncontroldisplayoptions-titleoptions>
                                           titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDropDownControlDisplayOptionsProperty ::
  DropDownControlDisplayOptionsProperty
mkDropDownControlDisplayOptionsProperty
  = DropDownControlDisplayOptionsProperty
      {haddock_workaround_ = (), infoIconLabelOptions = Prelude.Nothing,
       selectAllOptions = Prelude.Nothing, titleOptions = Prelude.Nothing}
instance ToResourceProperties DropDownControlDisplayOptionsProperty where
  toResourceProperties DropDownControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.DropDownControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
                            (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON DropDownControlDisplayOptionsProperty where
  toJSON DropDownControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
               (JSON..=) "SelectAllOptions" Prelude.<$> selectAllOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "InfoIconLabelOptions" DropDownControlDisplayOptionsProperty where
  type PropertyType "InfoIconLabelOptions" DropDownControlDisplayOptionsProperty = SheetControlInfoIconLabelOptionsProperty
  set newValue DropDownControlDisplayOptionsProperty {..}
    = DropDownControlDisplayOptionsProperty
        {infoIconLabelOptions = Prelude.pure newValue, ..}
instance Property "SelectAllOptions" DropDownControlDisplayOptionsProperty where
  type PropertyType "SelectAllOptions" DropDownControlDisplayOptionsProperty = ListControlSelectAllOptionsProperty
  set newValue DropDownControlDisplayOptionsProperty {..}
    = DropDownControlDisplayOptionsProperty
        {selectAllOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" DropDownControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" DropDownControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue DropDownControlDisplayOptionsProperty {..}
    = DropDownControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}