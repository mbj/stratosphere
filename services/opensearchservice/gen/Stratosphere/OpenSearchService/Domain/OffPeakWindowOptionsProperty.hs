module Stratosphere.OpenSearchService.Domain.OffPeakWindowOptionsProperty (
        module Exports, OffPeakWindowOptionsProperty(..),
        mkOffPeakWindowOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpenSearchService.Domain.OffPeakWindowProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OffPeakWindowOptionsProperty
  = OffPeakWindowOptionsProperty {enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                  offPeakWindow :: (Prelude.Maybe OffPeakWindowProperty)}
mkOffPeakWindowOptionsProperty :: OffPeakWindowOptionsProperty
mkOffPeakWindowOptionsProperty
  = OffPeakWindowOptionsProperty
      {enabled = Prelude.Nothing, offPeakWindow = Prelude.Nothing}
instance ToResourceProperties OffPeakWindowOptionsProperty where
  toResourceProperties OffPeakWindowOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpenSearchService::Domain.OffPeakWindowOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "OffPeakWindow" Prelude.<$> offPeakWindow])}
instance JSON.ToJSON OffPeakWindowOptionsProperty where
  toJSON OffPeakWindowOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "OffPeakWindow" Prelude.<$> offPeakWindow]))
instance Property "Enabled" OffPeakWindowOptionsProperty where
  type PropertyType "Enabled" OffPeakWindowOptionsProperty = Value Prelude.Bool
  set newValue OffPeakWindowOptionsProperty {..}
    = OffPeakWindowOptionsProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "OffPeakWindow" OffPeakWindowOptionsProperty where
  type PropertyType "OffPeakWindow" OffPeakWindowOptionsProperty = OffPeakWindowProperty
  set newValue OffPeakWindowOptionsProperty {..}
    = OffPeakWindowOptionsProperty
        {offPeakWindow = Prelude.pure newValue, ..}