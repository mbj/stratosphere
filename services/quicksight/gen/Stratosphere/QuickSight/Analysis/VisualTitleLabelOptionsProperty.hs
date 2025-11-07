module Stratosphere.QuickSight.Analysis.VisualTitleLabelOptionsProperty (
        module Exports, VisualTitleLabelOptionsProperty(..),
        mkVisualTitleLabelOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ShortFormatTextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VisualTitleLabelOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualtitlelabeloptions.html>
    VisualTitleLabelOptionsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualtitlelabeloptions.html#cfn-quicksight-analysis-visualtitlelabeloptions-formattext>
                                     formatText :: (Prelude.Maybe ShortFormatTextProperty),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-visualtitlelabeloptions.html#cfn-quicksight-analysis-visualtitlelabeloptions-visibility>
                                     visibility :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVisualTitleLabelOptionsProperty ::
  VisualTitleLabelOptionsProperty
mkVisualTitleLabelOptionsProperty
  = VisualTitleLabelOptionsProperty
      {haddock_workaround_ = (), formatText = Prelude.Nothing,
       visibility = Prelude.Nothing}
instance ToResourceProperties VisualTitleLabelOptionsProperty where
  toResourceProperties VisualTitleLabelOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.VisualTitleLabelOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FormatText" Prelude.<$> formatText,
                            (JSON..=) "Visibility" Prelude.<$> visibility])}
instance JSON.ToJSON VisualTitleLabelOptionsProperty where
  toJSON VisualTitleLabelOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FormatText" Prelude.<$> formatText,
               (JSON..=) "Visibility" Prelude.<$> visibility]))
instance Property "FormatText" VisualTitleLabelOptionsProperty where
  type PropertyType "FormatText" VisualTitleLabelOptionsProperty = ShortFormatTextProperty
  set newValue VisualTitleLabelOptionsProperty {..}
    = VisualTitleLabelOptionsProperty
        {formatText = Prelude.pure newValue, ..}
instance Property "Visibility" VisualTitleLabelOptionsProperty where
  type PropertyType "Visibility" VisualTitleLabelOptionsProperty = Value Prelude.Text
  set newValue VisualTitleLabelOptionsProperty {..}
    = VisualTitleLabelOptionsProperty
        {visibility = Prelude.pure newValue, ..}