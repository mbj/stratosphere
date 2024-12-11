module Stratosphere.SecurityLake.DataLake.LifecycleConfigurationProperty (
        module Exports, LifecycleConfigurationProperty(..),
        mkLifecycleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SecurityLake.DataLake.ExpirationProperty as Exports
import {-# SOURCE #-} Stratosphere.SecurityLake.DataLake.TransitionsProperty as Exports
import Stratosphere.ResourceProperties
data LifecycleConfigurationProperty
  = LifecycleConfigurationProperty {expiration :: (Prelude.Maybe ExpirationProperty),
                                    transitions :: (Prelude.Maybe [TransitionsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLifecycleConfigurationProperty :: LifecycleConfigurationProperty
mkLifecycleConfigurationProperty
  = LifecycleConfigurationProperty
      {expiration = Prelude.Nothing, transitions = Prelude.Nothing}
instance ToResourceProperties LifecycleConfigurationProperty where
  toResourceProperties LifecycleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityLake::DataLake.LifecycleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Expiration" Prelude.<$> expiration,
                            (JSON..=) "Transitions" Prelude.<$> transitions])}
instance JSON.ToJSON LifecycleConfigurationProperty where
  toJSON LifecycleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Expiration" Prelude.<$> expiration,
               (JSON..=) "Transitions" Prelude.<$> transitions]))
instance Property "Expiration" LifecycleConfigurationProperty where
  type PropertyType "Expiration" LifecycleConfigurationProperty = ExpirationProperty
  set newValue LifecycleConfigurationProperty {..}
    = LifecycleConfigurationProperty
        {expiration = Prelude.pure newValue, ..}
instance Property "Transitions" LifecycleConfigurationProperty where
  type PropertyType "Transitions" LifecycleConfigurationProperty = [TransitionsProperty]
  set newValue LifecycleConfigurationProperty {..}
    = LifecycleConfigurationProperty
        {transitions = Prelude.pure newValue, ..}