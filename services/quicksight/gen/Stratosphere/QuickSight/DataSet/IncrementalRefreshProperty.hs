module Stratosphere.QuickSight.DataSet.IncrementalRefreshProperty (
        module Exports, IncrementalRefreshProperty(..),
        mkIncrementalRefreshProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.DataSet.LookbackWindowProperty as Exports
import Stratosphere.ResourceProperties
data IncrementalRefreshProperty
  = IncrementalRefreshProperty {lookbackWindow :: (Prelude.Maybe LookbackWindowProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIncrementalRefreshProperty :: IncrementalRefreshProperty
mkIncrementalRefreshProperty
  = IncrementalRefreshProperty {lookbackWindow = Prelude.Nothing}
instance ToResourceProperties IncrementalRefreshProperty where
  toResourceProperties IncrementalRefreshProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::DataSet.IncrementalRefresh",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LookbackWindow" Prelude.<$> lookbackWindow])}
instance JSON.ToJSON IncrementalRefreshProperty where
  toJSON IncrementalRefreshProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LookbackWindow" Prelude.<$> lookbackWindow]))
instance Property "LookbackWindow" IncrementalRefreshProperty where
  type PropertyType "LookbackWindow" IncrementalRefreshProperty = LookbackWindowProperty
  set newValue IncrementalRefreshProperty {}
    = IncrementalRefreshProperty
        {lookbackWindow = Prelude.pure newValue, ..}