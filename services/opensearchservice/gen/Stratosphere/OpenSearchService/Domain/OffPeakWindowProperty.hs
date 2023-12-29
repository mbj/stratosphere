module Stratosphere.OpenSearchService.Domain.OffPeakWindowProperty (
        module Exports, OffPeakWindowProperty(..), mkOffPeakWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.WindowStartTimeProperty as Exports
import Stratosphere.ResourceProperties
data OffPeakWindowProperty
  = OffPeakWindowProperty {windowStartTime :: (Prelude.Maybe WindowStartTimeProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOffPeakWindowProperty :: OffPeakWindowProperty
mkOffPeakWindowProperty
  = OffPeakWindowProperty {windowStartTime = Prelude.Nothing}
instance ToResourceProperties OffPeakWindowProperty where
  toResourceProperties OffPeakWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.OffPeakWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "WindowStartTime" Prelude.<$> windowStartTime])}
instance JSON.ToJSON OffPeakWindowProperty where
  toJSON OffPeakWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "WindowStartTime" Prelude.<$> windowStartTime]))
instance Property "WindowStartTime" OffPeakWindowProperty where
  type PropertyType "WindowStartTime" OffPeakWindowProperty = WindowStartTimeProperty
  set newValue OffPeakWindowProperty {}
    = OffPeakWindowProperty
        {windowStartTime = Prelude.pure newValue, ..}