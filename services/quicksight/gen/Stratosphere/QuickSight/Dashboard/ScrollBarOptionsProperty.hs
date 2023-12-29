module Stratosphere.QuickSight.Dashboard.ScrollBarOptionsProperty (
        module Exports, ScrollBarOptionsProperty(..),
        mkScrollBarOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.VisibleRangeOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScrollBarOptionsProperty
  = ScrollBarOptionsProperty {visibility :: (Prelude.Maybe (Value Prelude.Text)),
                              visibleRange :: (Prelude.Maybe VisibleRangeOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScrollBarOptionsProperty :: ScrollBarOptionsProperty
mkScrollBarOptionsProperty
  = ScrollBarOptionsProperty
      {visibility = Prelude.Nothing, visibleRange = Prelude.Nothing}
instance ToResourceProperties ScrollBarOptionsProperty where
  toResourceProperties ScrollBarOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.ScrollBarOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Visibility" Prelude.<$> visibility,
                            (JSON..=) "VisibleRange" Prelude.<$> visibleRange])}
instance JSON.ToJSON ScrollBarOptionsProperty where
  toJSON ScrollBarOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Visibility" Prelude.<$> visibility,
               (JSON..=) "VisibleRange" Prelude.<$> visibleRange]))
instance Property "Visibility" ScrollBarOptionsProperty where
  type PropertyType "Visibility" ScrollBarOptionsProperty = Value Prelude.Text
  set newValue ScrollBarOptionsProperty {..}
    = ScrollBarOptionsProperty {visibility = Prelude.pure newValue, ..}
instance Property "VisibleRange" ScrollBarOptionsProperty where
  type PropertyType "VisibleRange" ScrollBarOptionsProperty = VisibleRangeOptionsProperty
  set newValue ScrollBarOptionsProperty {..}
    = ScrollBarOptionsProperty
        {visibleRange = Prelude.pure newValue, ..}