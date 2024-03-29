module Stratosphere.Events.Rule.RunCommandParametersProperty (
        module Exports, RunCommandParametersProperty(..),
        mkRunCommandParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Rule.RunCommandTargetProperty as Exports
import Stratosphere.ResourceProperties
data RunCommandParametersProperty
  = RunCommandParametersProperty {runCommandTargets :: [RunCommandTargetProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRunCommandParametersProperty ::
  [RunCommandTargetProperty] -> RunCommandParametersProperty
mkRunCommandParametersProperty runCommandTargets
  = RunCommandParametersProperty
      {runCommandTargets = runCommandTargets}
instance ToResourceProperties RunCommandParametersProperty where
  toResourceProperties RunCommandParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.RunCommandParameters",
         supportsTags = Prelude.False,
         properties = ["RunCommandTargets" JSON..= runCommandTargets]}
instance JSON.ToJSON RunCommandParametersProperty where
  toJSON RunCommandParametersProperty {..}
    = JSON.object ["RunCommandTargets" JSON..= runCommandTargets]
instance Property "RunCommandTargets" RunCommandParametersProperty where
  type PropertyType "RunCommandTargets" RunCommandParametersProperty = [RunCommandTargetProperty]
  set newValue RunCommandParametersProperty {}
    = RunCommandParametersProperty {runCommandTargets = newValue, ..}