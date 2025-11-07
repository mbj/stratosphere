module Stratosphere.Omics.WorkflowVersion.ContainerRegistryMapProperty (
        module Exports, ContainerRegistryMapProperty(..),
        mkContainerRegistryMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.WorkflowVersion.ImageMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.Omics.WorkflowVersion.RegistryMappingProperty as Exports
import Stratosphere.ResourceProperties
data ContainerRegistryMapProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-containerregistrymap.html>
    ContainerRegistryMapProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-containerregistrymap.html#cfn-omics-workflowversion-containerregistrymap-imagemappings>
                                  imageMappings :: (Prelude.Maybe [ImageMappingProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-omics-workflowversion-containerregistrymap.html#cfn-omics-workflowversion-containerregistrymap-registrymappings>
                                  registryMappings :: (Prelude.Maybe [RegistryMappingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerRegistryMapProperty :: ContainerRegistryMapProperty
mkContainerRegistryMapProperty
  = ContainerRegistryMapProperty
      {haddock_workaround_ = (), imageMappings = Prelude.Nothing,
       registryMappings = Prelude.Nothing}
instance ToResourceProperties ContainerRegistryMapProperty where
  toResourceProperties ContainerRegistryMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::Omics::WorkflowVersion.ContainerRegistryMap",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ImageMappings" Prelude.<$> imageMappings,
                            (JSON..=) "RegistryMappings" Prelude.<$> registryMappings])}
instance JSON.ToJSON ContainerRegistryMapProperty where
  toJSON ContainerRegistryMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ImageMappings" Prelude.<$> imageMappings,
               (JSON..=) "RegistryMappings" Prelude.<$> registryMappings]))
instance Property "ImageMappings" ContainerRegistryMapProperty where
  type PropertyType "ImageMappings" ContainerRegistryMapProperty = [ImageMappingProperty]
  set newValue ContainerRegistryMapProperty {..}
    = ContainerRegistryMapProperty
        {imageMappings = Prelude.pure newValue, ..}
instance Property "RegistryMappings" ContainerRegistryMapProperty where
  type PropertyType "RegistryMappings" ContainerRegistryMapProperty = [RegistryMappingProperty]
  set newValue ContainerRegistryMapProperty {..}
    = ContainerRegistryMapProperty
        {registryMappings = Prelude.pure newValue, ..}