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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-containerdistributionconfiguration.html>
    ContainerDistributionConfigurationProperty {haddock_workaround_ :: (),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-containerdistributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-containerdistributionconfiguration-containertags>
                                                containerTags :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-containerdistributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-containerdistributionconfiguration-description>
                                                description :: (Prelude.Maybe (Value Prelude.Text)),
                                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-distributionconfiguration-containerdistributionconfiguration.html#cfn-imagebuilder-distributionconfiguration-containerdistributionconfiguration-targetrepository>
                                                targetRepository :: (Prelude.Maybe TargetContainerRepositoryProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerDistributionConfigurationProperty ::
  ContainerDistributionConfigurationProperty
mkContainerDistributionConfigurationProperty
  = ContainerDistributionConfigurationProperty
      {haddock_workaround_ = (), containerTags = Prelude.Nothing,
       description = Prelude.Nothing, targetRepository = Prelude.Nothing}
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