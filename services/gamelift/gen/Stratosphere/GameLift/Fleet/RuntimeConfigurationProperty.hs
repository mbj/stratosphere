module Stratosphere.GameLift.Fleet.RuntimeConfigurationProperty (
        module Exports, RuntimeConfigurationProperty(..),
        mkRuntimeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.Fleet.ServerProcessProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RuntimeConfigurationProperty
  = RuntimeConfigurationProperty {gameSessionActivationTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                  maxConcurrentGameSessionActivations :: (Prelude.Maybe (Value Prelude.Integer)),
                                  serverProcesses :: (Prelude.Maybe [ServerProcessProperty])}
mkRuntimeConfigurationProperty :: RuntimeConfigurationProperty
mkRuntimeConfigurationProperty
  = RuntimeConfigurationProperty
      {gameSessionActivationTimeoutSeconds = Prelude.Nothing,
       maxConcurrentGameSessionActivations = Prelude.Nothing,
       serverProcesses = Prelude.Nothing}
instance ToResourceProperties RuntimeConfigurationProperty where
  toResourceProperties RuntimeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet.RuntimeConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "GameSessionActivationTimeoutSeconds"
                              Prelude.<$> gameSessionActivationTimeoutSeconds,
                            (JSON..=) "MaxConcurrentGameSessionActivations"
                              Prelude.<$> maxConcurrentGameSessionActivations,
                            (JSON..=) "ServerProcesses" Prelude.<$> serverProcesses])}
instance JSON.ToJSON RuntimeConfigurationProperty where
  toJSON RuntimeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "GameSessionActivationTimeoutSeconds"
                 Prelude.<$> gameSessionActivationTimeoutSeconds,
               (JSON..=) "MaxConcurrentGameSessionActivations"
                 Prelude.<$> maxConcurrentGameSessionActivations,
               (JSON..=) "ServerProcesses" Prelude.<$> serverProcesses]))
instance Property "GameSessionActivationTimeoutSeconds" RuntimeConfigurationProperty where
  type PropertyType "GameSessionActivationTimeoutSeconds" RuntimeConfigurationProperty = Value Prelude.Integer
  set newValue RuntimeConfigurationProperty {..}
    = RuntimeConfigurationProperty
        {gameSessionActivationTimeoutSeconds = Prelude.pure newValue, ..}
instance Property "MaxConcurrentGameSessionActivations" RuntimeConfigurationProperty where
  type PropertyType "MaxConcurrentGameSessionActivations" RuntimeConfigurationProperty = Value Prelude.Integer
  set newValue RuntimeConfigurationProperty {..}
    = RuntimeConfigurationProperty
        {maxConcurrentGameSessionActivations = Prelude.pure newValue, ..}
instance Property "ServerProcesses" RuntimeConfigurationProperty where
  type PropertyType "ServerProcesses" RuntimeConfigurationProperty = [ServerProcessProperty]
  set newValue RuntimeConfigurationProperty {..}
    = RuntimeConfigurationProperty
        {serverProcesses = Prelude.pure newValue, ..}