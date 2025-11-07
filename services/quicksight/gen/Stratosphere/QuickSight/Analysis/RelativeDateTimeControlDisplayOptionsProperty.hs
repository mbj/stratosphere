module Stratosphere.QuickSight.Analysis.RelativeDateTimeControlDisplayOptionsProperty (
        module Exports, RelativeDateTimeControlDisplayOptionsProperty(..),
        mkRelativeDateTimeControlDisplayOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.LabelOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.SheetControlInfoIconLabelOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RelativeDateTimeControlDisplayOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-relativedatetimecontroldisplayoptions.html>
    RelativeDateTimeControlDisplayOptionsProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-relativedatetimecontroldisplayoptions.html#cfn-quicksight-analysis-relativedatetimecontroldisplayoptions-datetimeformat>
                                                   dateTimeFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-relativedatetimecontroldisplayoptions.html#cfn-quicksight-analysis-relativedatetimecontroldisplayoptions-infoiconlabeloptions>
                                                   infoIconLabelOptions :: (Prelude.Maybe SheetControlInfoIconLabelOptionsProperty),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-relativedatetimecontroldisplayoptions.html#cfn-quicksight-analysis-relativedatetimecontroldisplayoptions-titleoptions>
                                                   titleOptions :: (Prelude.Maybe LabelOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRelativeDateTimeControlDisplayOptionsProperty ::
  RelativeDateTimeControlDisplayOptionsProperty
mkRelativeDateTimeControlDisplayOptionsProperty
  = RelativeDateTimeControlDisplayOptionsProperty
      {haddock_workaround_ = (), dateTimeFormat = Prelude.Nothing,
       infoIconLabelOptions = Prelude.Nothing,
       titleOptions = Prelude.Nothing}
instance ToResourceProperties RelativeDateTimeControlDisplayOptionsProperty where
  toResourceProperties
    RelativeDateTimeControlDisplayOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.RelativeDateTimeControlDisplayOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
                            (JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
                            (JSON..=) "TitleOptions" Prelude.<$> titleOptions])}
instance JSON.ToJSON RelativeDateTimeControlDisplayOptionsProperty where
  toJSON RelativeDateTimeControlDisplayOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DateTimeFormat" Prelude.<$> dateTimeFormat,
               (JSON..=) "InfoIconLabelOptions" Prelude.<$> infoIconLabelOptions,
               (JSON..=) "TitleOptions" Prelude.<$> titleOptions]))
instance Property "DateTimeFormat" RelativeDateTimeControlDisplayOptionsProperty where
  type PropertyType "DateTimeFormat" RelativeDateTimeControlDisplayOptionsProperty = Value Prelude.Text
  set newValue RelativeDateTimeControlDisplayOptionsProperty {..}
    = RelativeDateTimeControlDisplayOptionsProperty
        {dateTimeFormat = Prelude.pure newValue, ..}
instance Property "InfoIconLabelOptions" RelativeDateTimeControlDisplayOptionsProperty where
  type PropertyType "InfoIconLabelOptions" RelativeDateTimeControlDisplayOptionsProperty = SheetControlInfoIconLabelOptionsProperty
  set newValue RelativeDateTimeControlDisplayOptionsProperty {..}
    = RelativeDateTimeControlDisplayOptionsProperty
        {infoIconLabelOptions = Prelude.pure newValue, ..}
instance Property "TitleOptions" RelativeDateTimeControlDisplayOptionsProperty where
  type PropertyType "TitleOptions" RelativeDateTimeControlDisplayOptionsProperty = LabelOptionsProperty
  set newValue RelativeDateTimeControlDisplayOptionsProperty {..}
    = RelativeDateTimeControlDisplayOptionsProperty
        {titleOptions = Prelude.pure newValue, ..}