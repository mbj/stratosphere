module Stratosphere.QuickSight.Analysis.SpacingProperty (
        SpacingProperty(..), mkSpacingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpacingProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-spacing.html>
    SpacingProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-spacing.html#cfn-quicksight-analysis-spacing-bottom>
                     bottom :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-spacing.html#cfn-quicksight-analysis-spacing-left>
                     left :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-spacing.html#cfn-quicksight-analysis-spacing-right>
                     right :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-analysis-spacing.html#cfn-quicksight-analysis-spacing-top>
                     top :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpacingProperty :: SpacingProperty
mkSpacingProperty
  = SpacingProperty
      {haddock_workaround_ = (), bottom = Prelude.Nothing,
       left = Prelude.Nothing, right = Prelude.Nothing,
       top = Prelude.Nothing}
instance ToResourceProperties SpacingProperty where
  toResourceProperties SpacingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.Spacing",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bottom" Prelude.<$> bottom,
                            (JSON..=) "Left" Prelude.<$> left,
                            (JSON..=) "Right" Prelude.<$> right,
                            (JSON..=) "Top" Prelude.<$> top])}
instance JSON.ToJSON SpacingProperty where
  toJSON SpacingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bottom" Prelude.<$> bottom,
               (JSON..=) "Left" Prelude.<$> left,
               (JSON..=) "Right" Prelude.<$> right,
               (JSON..=) "Top" Prelude.<$> top]))
instance Property "Bottom" SpacingProperty where
  type PropertyType "Bottom" SpacingProperty = Value Prelude.Text
  set newValue SpacingProperty {..}
    = SpacingProperty {bottom = Prelude.pure newValue, ..}
instance Property "Left" SpacingProperty where
  type PropertyType "Left" SpacingProperty = Value Prelude.Text
  set newValue SpacingProperty {..}
    = SpacingProperty {left = Prelude.pure newValue, ..}
instance Property "Right" SpacingProperty where
  type PropertyType "Right" SpacingProperty = Value Prelude.Text
  set newValue SpacingProperty {..}
    = SpacingProperty {right = Prelude.pure newValue, ..}
instance Property "Top" SpacingProperty where
  type PropertyType "Top" SpacingProperty = Value Prelude.Text
  set newValue SpacingProperty {..}
    = SpacingProperty {top = Prelude.pure newValue, ..}