module Stratosphere.Backup.BackupPlan.LifecycleResourceTypeProperty (
        LifecycleResourceTypeProperty(..), mkLifecycleResourceTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LifecycleResourceTypeProperty
  = LifecycleResourceTypeProperty {deleteAfterDays :: (Prelude.Maybe (Value Prelude.Double)),
                                   moveToColdStorageAfterDays :: (Prelude.Maybe (Value Prelude.Double))}
mkLifecycleResourceTypeProperty :: LifecycleResourceTypeProperty
mkLifecycleResourceTypeProperty
  = LifecycleResourceTypeProperty
      {deleteAfterDays = Prelude.Nothing,
       moveToColdStorageAfterDays = Prelude.Nothing}
instance ToResourceProperties LifecycleResourceTypeProperty where
  toResourceProperties LifecycleResourceTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Backup::BackupPlan.LifecycleResourceType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeleteAfterDays" Prelude.<$> deleteAfterDays,
                            (JSON..=) "MoveToColdStorageAfterDays"
                              Prelude.<$> moveToColdStorageAfterDays])}
instance JSON.ToJSON LifecycleResourceTypeProperty where
  toJSON LifecycleResourceTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeleteAfterDays" Prelude.<$> deleteAfterDays,
               (JSON..=) "MoveToColdStorageAfterDays"
                 Prelude.<$> moveToColdStorageAfterDays]))
instance Property "DeleteAfterDays" LifecycleResourceTypeProperty where
  type PropertyType "DeleteAfterDays" LifecycleResourceTypeProperty = Value Prelude.Double
  set newValue LifecycleResourceTypeProperty {..}
    = LifecycleResourceTypeProperty
        {deleteAfterDays = Prelude.pure newValue, ..}
instance Property "MoveToColdStorageAfterDays" LifecycleResourceTypeProperty where
  type PropertyType "MoveToColdStorageAfterDays" LifecycleResourceTypeProperty = Value Prelude.Double
  set newValue LifecycleResourceTypeProperty {..}
    = LifecycleResourceTypeProperty
        {moveToColdStorageAfterDays = Prelude.pure newValue, ..}