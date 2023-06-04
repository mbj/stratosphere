module Stratosphere.QuickSight.Topic.DefaultFormattingProperty (
        module Exports, DefaultFormattingProperty(..),
        mkDefaultFormattingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Topic.DisplayFormatOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DefaultFormattingProperty
  = DefaultFormattingProperty {displayFormat :: (Prelude.Maybe (Value Prelude.Text)),
                               displayFormatOptions :: (Prelude.Maybe DisplayFormatOptionsProperty)}
mkDefaultFormattingProperty :: DefaultFormattingProperty
mkDefaultFormattingProperty
  = DefaultFormattingProperty
      {displayFormat = Prelude.Nothing,
       displayFormatOptions = Prelude.Nothing}
instance ToResourceProperties DefaultFormattingProperty where
  toResourceProperties DefaultFormattingProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Topic.DefaultFormatting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DisplayFormat" Prelude.<$> displayFormat,
                            (JSON..=) "DisplayFormatOptions"
                              Prelude.<$> displayFormatOptions])}
instance JSON.ToJSON DefaultFormattingProperty where
  toJSON DefaultFormattingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DisplayFormat" Prelude.<$> displayFormat,
               (JSON..=) "DisplayFormatOptions"
                 Prelude.<$> displayFormatOptions]))
instance Property "DisplayFormat" DefaultFormattingProperty where
  type PropertyType "DisplayFormat" DefaultFormattingProperty = Value Prelude.Text
  set newValue DefaultFormattingProperty {..}
    = DefaultFormattingProperty
        {displayFormat = Prelude.pure newValue, ..}
instance Property "DisplayFormatOptions" DefaultFormattingProperty where
  type PropertyType "DisplayFormatOptions" DefaultFormattingProperty = DisplayFormatOptionsProperty
  set newValue DefaultFormattingProperty {..}
    = DefaultFormattingProperty
        {displayFormatOptions = Prelude.pure newValue, ..}