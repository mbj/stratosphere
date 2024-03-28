module Stratosphere.QuickSight.Dashboard.KPIVisualLayoutOptionsProperty (
        module Exports, KPIVisualLayoutOptionsProperty(..),
        mkKPIVisualLayoutOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Dashboard.KPIVisualStandardLayoutProperty as Exports
import Stratosphere.ResourceProperties
data KPIVisualLayoutOptionsProperty
  = KPIVisualLayoutOptionsProperty {standardLayout :: (Prelude.Maybe KPIVisualStandardLayoutProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkKPIVisualLayoutOptionsProperty :: KPIVisualLayoutOptionsProperty
mkKPIVisualLayoutOptionsProperty
  = KPIVisualLayoutOptionsProperty {standardLayout = Prelude.Nothing}
instance ToResourceProperties KPIVisualLayoutOptionsProperty where
  toResourceProperties KPIVisualLayoutOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Dashboard.KPIVisualLayoutOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "StandardLayout" Prelude.<$> standardLayout])}
instance JSON.ToJSON KPIVisualLayoutOptionsProperty where
  toJSON KPIVisualLayoutOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "StandardLayout" Prelude.<$> standardLayout]))
instance Property "StandardLayout" KPIVisualLayoutOptionsProperty where
  type PropertyType "StandardLayout" KPIVisualLayoutOptionsProperty = KPIVisualStandardLayoutProperty
  set newValue KPIVisualLayoutOptionsProperty {}
    = KPIVisualLayoutOptionsProperty
        {standardLayout = Prelude.pure newValue, ..}