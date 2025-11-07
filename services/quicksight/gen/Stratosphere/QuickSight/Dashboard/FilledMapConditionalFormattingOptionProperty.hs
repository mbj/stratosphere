module Stratosphere.QuickSight.Dashboard.FilledMapConditionalFormattingOptionProperty (
        module Exports, FilledMapConditionalFormattingOptionProperty(..),
        mkFilledMapConditionalFormattingOptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.FilledMapShapeConditionalFormattingProperty as Exports
import Stratosphere.ResourceProperties
data FilledMapConditionalFormattingOptionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapconditionalformattingoption.html>
    FilledMapConditionalFormattingOptionProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-dashboard-filledmapconditionalformattingoption.html#cfn-quicksight-dashboard-filledmapconditionalformattingoption-shape>
                                                  shape :: FilledMapShapeConditionalFormattingProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFilledMapConditionalFormattingOptionProperty ::
  FilledMapShapeConditionalFormattingProperty
  -> FilledMapConditionalFormattingOptionProperty
mkFilledMapConditionalFormattingOptionProperty shape
  = FilledMapConditionalFormattingOptionProperty
      {haddock_workaround_ = (), shape = shape}
instance ToResourceProperties FilledMapConditionalFormattingOptionProperty where
  toResourceProperties
    FilledMapConditionalFormattingOptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.FilledMapConditionalFormattingOption",
         supportsTags = Prelude.False, properties = ["Shape" JSON..= shape]}
instance JSON.ToJSON FilledMapConditionalFormattingOptionProperty where
  toJSON FilledMapConditionalFormattingOptionProperty {..}
    = JSON.object ["Shape" JSON..= shape]
instance Property "Shape" FilledMapConditionalFormattingOptionProperty where
  type PropertyType "Shape" FilledMapConditionalFormattingOptionProperty = FilledMapShapeConditionalFormattingProperty
  set newValue FilledMapConditionalFormattingOptionProperty {..}
    = FilledMapConditionalFormattingOptionProperty
        {shape = newValue, ..}