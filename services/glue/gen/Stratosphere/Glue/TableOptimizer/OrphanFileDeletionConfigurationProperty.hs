module Stratosphere.Glue.TableOptimizer.OrphanFileDeletionConfigurationProperty (
        module Exports, OrphanFileDeletionConfigurationProperty(..),
        mkOrphanFileDeletionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Glue.TableOptimizer.IcebergConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data OrphanFileDeletionConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-orphanfiledeletionconfiguration.html>
    OrphanFileDeletionConfigurationProperty {haddock_workaround_ :: (),
                                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-glue-tableoptimizer-tableoptimizerconfiguration-orphanfiledeletionconfiguration.html#cfn-glue-tableoptimizer-tableoptimizerconfiguration-orphanfiledeletionconfiguration-icebergconfiguration>
                                             icebergConfiguration :: (Prelude.Maybe IcebergConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOrphanFileDeletionConfigurationProperty ::
  OrphanFileDeletionConfigurationProperty
mkOrphanFileDeletionConfigurationProperty
  = OrphanFileDeletionConfigurationProperty
      {haddock_workaround_ = (), icebergConfiguration = Prelude.Nothing}
instance ToResourceProperties OrphanFileDeletionConfigurationProperty where
  toResourceProperties OrphanFileDeletionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::TableOptimizer.OrphanFileDeletionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IcebergConfiguration"
                              Prelude.<$> icebergConfiguration])}
instance JSON.ToJSON OrphanFileDeletionConfigurationProperty where
  toJSON OrphanFileDeletionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IcebergConfiguration"
                 Prelude.<$> icebergConfiguration]))
instance Property "IcebergConfiguration" OrphanFileDeletionConfigurationProperty where
  type PropertyType "IcebergConfiguration" OrphanFileDeletionConfigurationProperty = IcebergConfigurationProperty
  set newValue OrphanFileDeletionConfigurationProperty {..}
    = OrphanFileDeletionConfigurationProperty
        {icebergConfiguration = Prelude.pure newValue, ..}