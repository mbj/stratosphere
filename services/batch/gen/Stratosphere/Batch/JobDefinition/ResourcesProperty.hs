module Stratosphere.Batch.JobDefinition.ResourcesProperty (
        ResourcesProperty(..), mkResourcesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data ResourcesProperty
  = ResourcesProperty {limits :: (Prelude.Maybe JSON.Object),
                       requests :: (Prelude.Maybe JSON.Object)}
mkResourcesProperty :: ResourcesProperty
mkResourcesProperty
  = ResourcesProperty
      {limits = Prelude.Nothing, requests = Prelude.Nothing}
instance ToResourceProperties ResourcesProperty where
  toResourceProperties ResourcesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.Resources",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Limits" Prelude.<$> limits,
                            (JSON..=) "Requests" Prelude.<$> requests])}
instance JSON.ToJSON ResourcesProperty where
  toJSON ResourcesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Limits" Prelude.<$> limits,
               (JSON..=) "Requests" Prelude.<$> requests]))
instance Property "Limits" ResourcesProperty where
  type PropertyType "Limits" ResourcesProperty = JSON.Object
  set newValue ResourcesProperty {..}
    = ResourcesProperty {limits = Prelude.pure newValue, ..}
instance Property "Requests" ResourcesProperty where
  type PropertyType "Requests" ResourcesProperty = JSON.Object
  set newValue ResourcesProperty {..}
    = ResourcesProperty {requests = Prelude.pure newValue, ..}