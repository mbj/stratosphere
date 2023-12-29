module Stratosphere.Config.RemediationConfiguration.ExecutionControlsProperty (
        module Exports, ExecutionControlsProperty(..),
        mkExecutionControlsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Config.RemediationConfiguration.SsmControlsProperty as Exports
import Stratosphere.ResourceProperties
data ExecutionControlsProperty
  = ExecutionControlsProperty {ssmControls :: (Prelude.Maybe SsmControlsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExecutionControlsProperty :: ExecutionControlsProperty
mkExecutionControlsProperty
  = ExecutionControlsProperty {ssmControls = Prelude.Nothing}
instance ToResourceProperties ExecutionControlsProperty where
  toResourceProperties ExecutionControlsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Config::RemediationConfiguration.ExecutionControls",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "SsmControls" Prelude.<$> ssmControls])}
instance JSON.ToJSON ExecutionControlsProperty where
  toJSON ExecutionControlsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "SsmControls" Prelude.<$> ssmControls]))
instance Property "SsmControls" ExecutionControlsProperty where
  type PropertyType "SsmControls" ExecutionControlsProperty = SsmControlsProperty
  set newValue ExecutionControlsProperty {}
    = ExecutionControlsProperty
        {ssmControls = Prelude.pure newValue, ..}