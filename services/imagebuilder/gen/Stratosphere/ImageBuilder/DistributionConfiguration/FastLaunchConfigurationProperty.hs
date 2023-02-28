module Stratosphere.ImageBuilder.DistributionConfiguration.FastLaunchConfigurationProperty (
        module Exports, FastLaunchConfigurationProperty(..),
        mkFastLaunchConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.FastLaunchLaunchTemplateSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.ImageBuilder.DistributionConfiguration.FastLaunchSnapshotConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FastLaunchConfigurationProperty
  = FastLaunchConfigurationProperty {accountId :: (Prelude.Maybe (Value Prelude.Text)),
                                     enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                                     launchTemplate :: (Prelude.Maybe FastLaunchLaunchTemplateSpecificationProperty),
                                     maxParallelLaunches :: (Prelude.Maybe (Value Prelude.Integer)),
                                     snapshotConfiguration :: (Prelude.Maybe FastLaunchSnapshotConfigurationProperty)}
mkFastLaunchConfigurationProperty ::
  FastLaunchConfigurationProperty
mkFastLaunchConfigurationProperty
  = FastLaunchConfigurationProperty
      {accountId = Prelude.Nothing, enabled = Prelude.Nothing,
       launchTemplate = Prelude.Nothing,
       maxParallelLaunches = Prelude.Nothing,
       snapshotConfiguration = Prelude.Nothing}
instance ToResourceProperties FastLaunchConfigurationProperty where
  toResourceProperties FastLaunchConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::DistributionConfiguration.FastLaunchConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AccountId" Prelude.<$> accountId,
                            (JSON..=) "Enabled" Prelude.<$> enabled,
                            (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
                            (JSON..=) "MaxParallelLaunches" Prelude.<$> maxParallelLaunches,
                            (JSON..=) "SnapshotConfiguration"
                              Prelude.<$> snapshotConfiguration])}
instance JSON.ToJSON FastLaunchConfigurationProperty where
  toJSON FastLaunchConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AccountId" Prelude.<$> accountId,
               (JSON..=) "Enabled" Prelude.<$> enabled,
               (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
               (JSON..=) "MaxParallelLaunches" Prelude.<$> maxParallelLaunches,
               (JSON..=) "SnapshotConfiguration"
                 Prelude.<$> snapshotConfiguration]))
instance Property "AccountId" FastLaunchConfigurationProperty where
  type PropertyType "AccountId" FastLaunchConfigurationProperty = Value Prelude.Text
  set newValue FastLaunchConfigurationProperty {..}
    = FastLaunchConfigurationProperty
        {accountId = Prelude.pure newValue, ..}
instance Property "Enabled" FastLaunchConfigurationProperty where
  type PropertyType "Enabled" FastLaunchConfigurationProperty = Value Prelude.Bool
  set newValue FastLaunchConfigurationProperty {..}
    = FastLaunchConfigurationProperty
        {enabled = Prelude.pure newValue, ..}
instance Property "LaunchTemplate" FastLaunchConfigurationProperty where
  type PropertyType "LaunchTemplate" FastLaunchConfigurationProperty = FastLaunchLaunchTemplateSpecificationProperty
  set newValue FastLaunchConfigurationProperty {..}
    = FastLaunchConfigurationProperty
        {launchTemplate = Prelude.pure newValue, ..}
instance Property "MaxParallelLaunches" FastLaunchConfigurationProperty where
  type PropertyType "MaxParallelLaunches" FastLaunchConfigurationProperty = Value Prelude.Integer
  set newValue FastLaunchConfigurationProperty {..}
    = FastLaunchConfigurationProperty
        {maxParallelLaunches = Prelude.pure newValue, ..}
instance Property "SnapshotConfiguration" FastLaunchConfigurationProperty where
  type PropertyType "SnapshotConfiguration" FastLaunchConfigurationProperty = FastLaunchSnapshotConfigurationProperty
  set newValue FastLaunchConfigurationProperty {..}
    = FastLaunchConfigurationProperty
        {snapshotConfiguration = Prelude.pure newValue, ..}