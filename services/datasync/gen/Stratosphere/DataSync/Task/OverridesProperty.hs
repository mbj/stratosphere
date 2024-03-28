module Stratosphere.DataSync.Task.OverridesProperty (
        module Exports, OverridesProperty(..), mkOverridesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.Task.DeletedProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.SkippedProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.TransferredProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.VerifiedProperty as Exports
import Stratosphere.ResourceProperties
data OverridesProperty
  = OverridesProperty {deleted :: (Prelude.Maybe DeletedProperty),
                       skipped :: (Prelude.Maybe SkippedProperty),
                       transferred :: (Prelude.Maybe TransferredProperty),
                       verified :: (Prelude.Maybe VerifiedProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOverridesProperty :: OverridesProperty
mkOverridesProperty
  = OverridesProperty
      {deleted = Prelude.Nothing, skipped = Prelude.Nothing,
       transferred = Prelude.Nothing, verified = Prelude.Nothing}
instance ToResourceProperties OverridesProperty where
  toResourceProperties OverridesProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.Overrides",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Deleted" Prelude.<$> deleted,
                            (JSON..=) "Skipped" Prelude.<$> skipped,
                            (JSON..=) "Transferred" Prelude.<$> transferred,
                            (JSON..=) "Verified" Prelude.<$> verified])}
instance JSON.ToJSON OverridesProperty where
  toJSON OverridesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Deleted" Prelude.<$> deleted,
               (JSON..=) "Skipped" Prelude.<$> skipped,
               (JSON..=) "Transferred" Prelude.<$> transferred,
               (JSON..=) "Verified" Prelude.<$> verified]))
instance Property "Deleted" OverridesProperty where
  type PropertyType "Deleted" OverridesProperty = DeletedProperty
  set newValue OverridesProperty {..}
    = OverridesProperty {deleted = Prelude.pure newValue, ..}
instance Property "Skipped" OverridesProperty where
  type PropertyType "Skipped" OverridesProperty = SkippedProperty
  set newValue OverridesProperty {..}
    = OverridesProperty {skipped = Prelude.pure newValue, ..}
instance Property "Transferred" OverridesProperty where
  type PropertyType "Transferred" OverridesProperty = TransferredProperty
  set newValue OverridesProperty {..}
    = OverridesProperty {transferred = Prelude.pure newValue, ..}
instance Property "Verified" OverridesProperty where
  type PropertyType "Verified" OverridesProperty = VerifiedProperty
  set newValue OverridesProperty {..}
    = OverridesProperty {verified = Prelude.pure newValue, ..}