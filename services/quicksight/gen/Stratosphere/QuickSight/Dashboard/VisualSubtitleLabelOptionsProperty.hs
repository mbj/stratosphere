module Stratosphere.QuickSight.Dashboard.VisualSubtitleLabelOptionsProperty (
        module Exports, VisualSubtitleLabelOptionsProperty(..),
        mkVisualSubtitleLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.LongFormatTextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualSubtitleLabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualsubtitlelabeloptions.html>
    VisualSubtitleLabelOptionsProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualsubtitlelabeloptions.html#cfn-quicksight-dashboard-visualsubtitlelabeloptions-formattext>
                                        formatText :: (Prelude.Maybe LongFormatTextProperty),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-visualsubtitlelabeloptions.html#cfn-quicksight-dashboard-visualsubtitlelabeloptions-visibility>
                                        visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualSubtitleLabelOptionsProperty ::
  VisualSubtitleLabelOptionsProperty
mkVisualSubtitleLabelOptionsProperty
  = VisualSubtitleLabelOptionsProperty
      {haddock_workaround_ = (), formatText = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties VisualSubtitleLabelOptionsProperty where
  toResourceProperties VisualSubtitleLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.VisualSubtitleLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FormatText" Prelude.<$> formatText,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON VisualSubtitleLabelOptionsProperty where
  toJSON VisualSubtitleLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FormatText" Prelude.<$> formatText,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "FormatText" VisualSubtitleLabelOptionsProperty where
  type PropertyType "FormatText" VisualSubtitleLabelOptionsProperty = LongFormatTextProperty
  set newValue VisualSubtitleLabelOptionsProperty {..}
    = VisualSubtitleLabelOptionsProperty
        {formatText = Prelude.pure newValue, ..}
instance Property "Visibility" VisualSubtitleLabelOptionsProperty where
  type PropertyType "Visibility" VisualSubtitleLabelOptionsProperty = Value Prelude.Text
  set newValue VisualSubtitleLabelOptionsProperty {..}
    = VisualSubtitleLabelOptionsProperty
        {visibility = Prelude.pure newValue, ..}