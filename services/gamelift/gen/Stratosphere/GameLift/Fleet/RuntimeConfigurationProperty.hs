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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html>
    RuntimeConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-gamesessionactivationtimeoutseconds>
                                  gameSessionActivationTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-maxconcurrentgamesessionactivations>
                                  maxConcurrentGameSessionActivations :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-gamelift-fleet-runtimeconfiguration.html#cfn-gamelift-fleet-runtimeconfiguration-serverprocesses>
                                  serverProcesses :: (Prelude.Maybe [ServerProcessProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuntimeConfigurationProperty :: RuntimeConfigurationProperty
mkRuntimeConfigurationProperty
  = RuntimeConfigurationProperty
      {haddock_workaround_ = (),
       gameSessionActivationTimeoutSeconds = Prelude.Nothing,
       maxConcurrentGameSessionActivations = Prelude.Nothing,
       serverProcesses = Prelude.Nothing}
instance ToResourceProperties RuntimeConfigurationProperty where
  toResourceProperties RuntimeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::Fleet.RuntimeConfiguration",
         supportsTags = Prelude.False,
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