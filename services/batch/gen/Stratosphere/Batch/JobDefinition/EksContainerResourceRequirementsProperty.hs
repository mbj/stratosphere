module Stratosphere.Batch.JobDefinition.EksContainerResourceRequirementsProperty (
        EksContainerResourceRequirementsProperty(..),
        mkEksContainerResourceRequirementsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
data EksContainerResourceRequirementsProperty
  = EksContainerResourceRequirementsProperty {limits :: (Prelude.Maybe JSON.Object),
                                              requests :: (Prelude.Maybe JSON.Object)}
mkEksContainerResourceRequirementsProperty ::
  EksContainerResourceRequirementsProperty
mkEksContainerResourceRequirementsProperty
  = EksContainerResourceRequirementsProperty
      {limits = Prelude.Nothing, requests = Prelude.Nothing}
instance ToResourceProperties EksContainerResourceRequirementsProperty where
  toResourceProperties EksContainerResourceRequirementsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EksContainerResourceRequirements",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Limits" Prelude.<$> limits,
                            (JSON..=) "Requests" Prelude.<$> requests])}
instance JSON.ToJSON EksContainerResourceRequirementsProperty where
  toJSON EksContainerResourceRequirementsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Limits" Prelude.<$> limits,
               (JSON..=) "Requests" Prelude.<$> requests]))
instance Property "Limits" EksContainerResourceRequirementsProperty where
  type PropertyType "Limits" EksContainerResourceRequirementsProperty = JSON.Object
  set newValue EksContainerResourceRequirementsProperty {..}
    = EksContainerResourceRequirementsProperty
        {limits = Prelude.pure newValue, ..}
instance Property "Requests" EksContainerResourceRequirementsProperty where
  type PropertyType "Requests" EksContainerResourceRequirementsProperty = JSON.Object
  set newValue EksContainerResourceRequirementsProperty {..}
    = EksContainerResourceRequirementsProperty
        {requests = Prelude.pure newValue, ..}