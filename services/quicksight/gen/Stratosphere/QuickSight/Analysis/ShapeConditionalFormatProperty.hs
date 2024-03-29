module Stratosphere.QuickSight.Analysis.ShapeConditionalFormatProperty (
        module Exports, ShapeConditionalFormatProperty(..),
        mkShapeConditionalFormatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Analysis.ConditionalFormattingColorProperty as Exports
import Stratosphere.ResourceProperties
data ShapeConditionalFormatProperty
  = ShapeConditionalFormatProperty {backgroundColor :: ConditionalFormattingColorProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkShapeConditionalFormatProperty ::
  ConditionalFormattingColorProperty
  -> ShapeConditionalFormatProperty
mkShapeConditionalFormatProperty backgroundColor
  = ShapeConditionalFormatProperty
      {backgroundColor = backgroundColor}
instance ToResourceProperties ShapeConditionalFormatProperty where
  toResourceProperties ShapeConditionalFormatProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Analysis.ShapeConditionalFormat",
         supportsTags = Prelude.False,
         properties = ["BackgroundColor" JSON..= backgroundColor]}
instance JSON.ToJSON ShapeConditionalFormatProperty where
  toJSON ShapeConditionalFormatProperty {..}
    = JSON.object ["BackgroundColor" JSON..= backgroundColor]
instance Property "BackgroundColor" ShapeConditionalFormatProperty where
  type PropertyType "BackgroundColor" ShapeConditionalFormatProperty = ConditionalFormattingColorProperty
  set newValue ShapeConditionalFormatProperty {}
    = ShapeConditionalFormatProperty {backgroundColor = newValue, ..}