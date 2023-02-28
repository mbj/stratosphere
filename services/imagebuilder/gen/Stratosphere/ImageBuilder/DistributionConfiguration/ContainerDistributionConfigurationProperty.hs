module Stratosphere.ImageBuilder.DistributionConfiguration.ContainerDistributionConfigurationProperty (
        module Exports, ContainerDistributionConfigurationProperty(..),
        mkContainerDistributionConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.TargetContainerRepositoryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContainerDistributionConfigurationProperty
  = ContainerDistributionConfigurationProperty {containerTags :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                                targetRepository :: (Prelude.Maybe TargetContainerRepositoryProperty)}
mkContainerDistributionConfigurationProperty ::
  ContainerDistributionConfigurationProperty
mkContainerDistributionConfigurationProperty
  = ContainerDistributionConfigurationProperty
      {containerTags = Prelude.Nothing, description = Prelude.Nothing,
       targetRepository = Prelude.Nothing}
instance ToResourceProperties ContainerDistributionConfigurationProperty where
  toResourceProperties
    ContainerDistributionConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.ContainerDistributionConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerTags" Prelude.<$> containerTags,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "TargetRepository" Prelude.<$> targetRepository])}
instance JSON.ToJSON ContainerDistributionConfigurationProperty where
  toJSON ContainerDistributionConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerTags" Prelude.<$> containerTags,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "TargetRepository" Prelude.<$> targetRepository]))
instance Property "ContainerTags" ContainerDistributionConfigurationProperty where
  type PropertyType "ContainerTags" ContainerDistributionConfigurationProperty = ValueList Prelude.Text
  set newValue ContainerDistributionConfigurationProperty {..}
    = ContainerDistributionConfigurationProperty
        {containerTags = Prelude.pure newValue, ..}
instance Property "Description" ContainerDistributionConfigurationProperty where
  type PropertyType "Description" ContainerDistributionConfigurationProperty = Value Prelude.Text
  set newValue ContainerDistributionConfigurationProperty {..}
    = ContainerDistributionConfigurationProperty
        {description = Prelude.pure newValue, ..}
instance Property "TargetRepository" ContainerDistributionConfigurationProperty where
  type PropertyType "TargetRepository" ContainerDistributionConfigurationProperty = TargetContainerRepositoryProperty
  set newValue ContainerDistributionConfigurationProperty {..}
    = ContainerDistributionConfigurationProperty
        {targetRepository = Prelude.pure newValue, ..}