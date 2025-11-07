module Stratosphere.QuickSight.Template.ShapeConditionalFormatProperty (
        module Exports, ShapeConditionalFormatProperty(..),
        mkShapeConditionalFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ConditionalFormattingColorProperty as Exports
import Stratosphere.ResourceProperties
data ShapeConditionalFormatProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-shapeconditionalformat.html>
    ShapeConditionalFormatProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-quicksight-template-shapeconditionalformat.html#cfn-quicksight-template-shapeconditionalformat-backgroundcolor>
                                    backgroundColor :: ConditionalFormattingColorProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkShapeConditionalFormatProperty ::
  ConditionalFormattingColorProperty
  -> ShapeConditionalFormatProperty
mkShapeConditionalFormatProperty backgroundColor
  = ShapeConditionalFormatProperty
      {haddock_workaround_ = (), backgroundColor = backgroundColor}
instance ToResourceProperties ShapeConditionalFormatProperty where
  toResourceProperties ShapeConditionalFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template.ShapeConditionalFormat",
         supportsTags = Prelude.False,
         properties = ["BackgroundColor" JSON..= backgroundColor]}
instance JSON.ToJSON ShapeConditionalFormatProperty where
  toJSON ShapeConditionalFormatProperty {..}
    = JSON.object ["BackgroundColor" JSON..= backgroundColor]
instance Property "BackgroundColor" ShapeConditionalFormatProperty where
  type PropertyType "BackgroundColor" ShapeConditionalFormatProperty = ConditionalFormattingColorProperty
  set newValue ShapeConditionalFormatProperty {..}
    = ShapeConditionalFormatProperty {backgroundColor = newValue, ..}