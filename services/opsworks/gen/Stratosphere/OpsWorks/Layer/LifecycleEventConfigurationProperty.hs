module Stratosphere.OpsWorks.Layer.LifecycleEventConfigurationProperty (
        module Exports, LifecycleEventConfigurationProperty(..),
        mkLifecycleEventConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.OpsWorks.Layer.ShutdownEventConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data LifecycleEventConfigurationProperty
  = LifecycleEventConfigurationProperty {shutdownEventConfiguration :: (Prelude.Maybe ShutdownEventConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecycleEventConfigurationProperty ::
  LifecycleEventConfigurationProperty
mkLifecycleEventConfigurationProperty
  = LifecycleEventConfigurationProperty
      {shutdownEventConfiguration = Prelude.Nothing}
instance ToResourceProperties LifecycleEventConfigurationProperty where
  toResourceProperties LifecycleEventConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Layer.LifecycleEventConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ShutdownEventConfiguration"
                              Prelude.<$> shutdownEventConfiguration])}
instance JSON.ToJSON LifecycleEventConfigurationProperty where
  toJSON LifecycleEventConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ShutdownEventConfiguration"
                 Prelude.<$> shutdownEventConfiguration]))
instance Property "ShutdownEventConfiguration" LifecycleEventConfigurationProperty where
  type PropertyType "ShutdownEventConfiguration" LifecycleEventConfigurationProperty = ShutdownEventConfigurationProperty
  set newValue LifecycleEventConfigurationProperty {}
    = LifecycleEventConfigurationProperty
        {shutdownEventConfiguration = Prelude.pure newValue, ..}