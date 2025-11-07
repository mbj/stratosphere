module Stratosphere.Bedrock.Agent.CustomOrchestrationProperty (
        module Exports, CustomOrchestrationProperty(..),
        mkCustomOrchestrationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Agent.OrchestrationExecutorProperty as Exports
import Stratosphere.ResourceProperties
data CustomOrchestrationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-customorchestration.html>
    CustomOrchestrationProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-agent-customorchestration.html#cfn-bedrock-agent-customorchestration-executor>
                                 executor :: (Prelude.Maybe OrchestrationExecutorProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomOrchestrationProperty :: CustomOrchestrationProperty
mkCustomOrchestrationProperty
  = CustomOrchestrationProperty
      {haddock_workaround_ = (), executor = Prelude.Nothing}
instance ToResourceProperties CustomOrchestrationProperty where
  toResourceProperties CustomOrchestrationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Agent.CustomOrchestration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Executor" Prelude.<$> executor])}
instance JSON.ToJSON CustomOrchestrationProperty where
  toJSON CustomOrchestrationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Executor" Prelude.<$> executor]))
instance Property "Executor" CustomOrchestrationProperty where
  type PropertyType "Executor" CustomOrchestrationProperty = OrchestrationExecutorProperty
  set newValue CustomOrchestrationProperty {..}
    = CustomOrchestrationProperty
        {executor = Prelude.pure newValue, ..}