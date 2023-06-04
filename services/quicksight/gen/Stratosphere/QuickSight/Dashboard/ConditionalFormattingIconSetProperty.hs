module Stratosphere.QuickSight.Dashboard.ConditionalFormattingIconSetProperty (
        ConditionalFormattingIconSetProperty(..),
        mkConditionalFormattingIconSetProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConditionalFormattingIconSetProperty
  = ConditionalFormattingIconSetProperty {expression :: (Value Prelude.Text),
                                          iconSetType :: (Prelude.Maybe (Value Prelude.Text))}
mkConditionalFormattingIconSetProperty ::
  Value Prelude.Text -> ConditionalFormattingIconSetProperty
mkConditionalFormattingIconSetProperty expression
  = ConditionalFormattingIconSetProperty
      {expression = expression, iconSetType = Prelude.Nothing}
instance ToResourceProperties ConditionalFormattingIconSetProperty where
  toResourceProperties ConditionalFormattingIconSetProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ConditionalFormattingIconSet",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression]
                           (Prelude.catMaybes
                              [(JSON..=) "IconSetType" Prelude.<$> iconSetType]))}
instance JSON.ToJSON ConditionalFormattingIconSetProperty where
  toJSON ConditionalFormattingIconSetProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression]
              (Prelude.catMaybes
                 [(JSON..=) "IconSetType" Prelude.<$> iconSetType])))
instance Property "Expression" ConditionalFormattingIconSetProperty where
  type PropertyType "Expression" ConditionalFormattingIconSetProperty = Value Prelude.Text
  set newValue ConditionalFormattingIconSetProperty {..}
    = ConditionalFormattingIconSetProperty {expression = newValue, ..}
instance Property "IconSetType" ConditionalFormattingIconSetProperty where
  type PropertyType "IconSetType" ConditionalFormattingIconSetProperty = Value Prelude.Text
  set newValue ConditionalFormattingIconSetProperty {..}
    = ConditionalFormattingIconSetProperty
        {iconSetType = Prelude.pure newValue, ..}