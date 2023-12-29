module Stratosphere.NimbleStudio.StudioComponent.StudioComponentConfigurationProperty (
        module Exports, StudioComponentConfigurationProperty(..),
        mkStudioComponentConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NimbleStudio.StudioComponent.ActiveDirectoryConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.NimbleStudio.StudioComponent.ComputeFarmConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.NimbleStudio.StudioComponent.LicenseServiceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.NimbleStudio.StudioComponent.SharedFileSystemConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data StudioComponentConfigurationProperty
  = StudioComponentConfigurationProperty {activeDirectoryConfiguration :: (Prelude.Maybe ActiveDirectoryConfigurationProperty),
                                          computeFarmConfiguration :: (Prelude.Maybe ComputeFarmConfigurationProperty),
                                          licenseServiceConfiguration :: (Prelude.Maybe LicenseServiceConfigurationProperty),
                                          sharedFileSystemConfiguration :: (Prelude.Maybe SharedFileSystemConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStudioComponentConfigurationProperty ::
  StudioComponentConfigurationProperty
mkStudioComponentConfigurationProperty
  = StudioComponentConfigurationProperty
      {activeDirectoryConfiguration = Prelude.Nothing,
       computeFarmConfiguration = Prelude.Nothing,
       licenseServiceConfiguration = Prelude.Nothing,
       sharedFileSystemConfiguration = Prelude.Nothing}
instance ToResourceProperties StudioComponentConfigurationProperty where
  toResourceProperties StudioComponentConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::NimbleStudio::StudioComponent.StudioComponentConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ActiveDirectoryConfiguration"
                              Prelude.<$> activeDirectoryConfiguration,
                            (JSON..=) "ComputeFarmConfiguration"
                              Prelude.<$> computeFarmConfiguration,
                            (JSON..=) "LicenseServiceConfiguration"
                              Prelude.<$> licenseServiceConfiguration,
                            (JSON..=) "SharedFileSystemConfiguration"
                              Prelude.<$> sharedFileSystemConfiguration])}
instance JSON.ToJSON StudioComponentConfigurationProperty where
  toJSON StudioComponentConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ActiveDirectoryConfiguration"
                 Prelude.<$> activeDirectoryConfiguration,
               (JSON..=) "ComputeFarmConfiguration"
                 Prelude.<$> computeFarmConfiguration,
               (JSON..=) "LicenseServiceConfiguration"
                 Prelude.<$> licenseServiceConfiguration,
               (JSON..=) "SharedFileSystemConfiguration"
                 Prelude.<$> sharedFileSystemConfiguration]))
instance Property "ActiveDirectoryConfiguration" StudioComponentConfigurationProperty where
  type PropertyType "ActiveDirectoryConfiguration" StudioComponentConfigurationProperty = ActiveDirectoryConfigurationProperty
  set newValue StudioComponentConfigurationProperty {..}
    = StudioComponentConfigurationProperty
        {activeDirectoryConfiguration = Prelude.pure newValue, ..}
instance Property "ComputeFarmConfiguration" StudioComponentConfigurationProperty where
  type PropertyType "ComputeFarmConfiguration" StudioComponentConfigurationProperty = ComputeFarmConfigurationProperty
  set newValue StudioComponentConfigurationProperty {..}
    = StudioComponentConfigurationProperty
        {computeFarmConfiguration = Prelude.pure newValue, ..}
instance Property "LicenseServiceConfiguration" StudioComponentConfigurationProperty where
  type PropertyType "LicenseServiceConfiguration" StudioComponentConfigurationProperty = LicenseServiceConfigurationProperty
  set newValue StudioComponentConfigurationProperty {..}
    = StudioComponentConfigurationProperty
        {licenseServiceConfiguration = Prelude.pure newValue, ..}
instance Property "SharedFileSystemConfiguration" StudioComponentConfigurationProperty where
  type PropertyType "SharedFileSystemConfiguration" StudioComponentConfigurationProperty = SharedFileSystemConfigurationProperty
  set newValue StudioComponentConfigurationProperty {..}
    = StudioComponentConfigurationProperty
        {sharedFileSystemConfiguration = Prelude.pure newValue, ..}