module Stratosphere.Bedrock.Flow.FlowNodeConfigurationProperty (
        module Exports, FlowNodeConfigurationProperty(..),
        mkFlowNodeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.AgentFlowNodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.ConditionFlowNodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.KnowledgeBaseFlowNodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.LambdaFunctionFlowNodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.LexFlowNodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.PromptFlowNodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.RetrievalFlowNodeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Flow.StorageFlowNodeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data FlowNodeConfigurationProperty
  = FlowNodeConfigurationProperty {agent :: (Prelude.Maybe AgentFlowNodeConfigurationProperty),
                                   collector :: (Prelude.Maybe JSON.Object),
                                   condition :: (Prelude.Maybe ConditionFlowNodeConfigurationProperty),
                                   input :: (Prelude.Maybe JSON.Object),
                                   iterator :: (Prelude.Maybe JSON.Object),
                                   knowledgeBase :: (Prelude.Maybe KnowledgeBaseFlowNodeConfigurationProperty),
                                   lambdaFunction :: (Prelude.Maybe LambdaFunctionFlowNodeConfigurationProperty),
                                   lex :: (Prelude.Maybe LexFlowNodeConfigurationProperty),
                                   output :: (Prelude.Maybe JSON.Object),
                                   prompt :: (Prelude.Maybe PromptFlowNodeConfigurationProperty),
                                   retrieval :: (Prelude.Maybe RetrievalFlowNodeConfigurationProperty),
                                   storage :: (Prelude.Maybe StorageFlowNodeConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowNodeConfigurationProperty :: FlowNodeConfigurationProperty
mkFlowNodeConfigurationProperty
  = FlowNodeConfigurationProperty
      {agent = Prelude.Nothing, collector = Prelude.Nothing,
       condition = Prelude.Nothing, input = Prelude.Nothing,
       iterator = Prelude.Nothing, knowledgeBase = Prelude.Nothing,
       lambdaFunction = Prelude.Nothing, lex = Prelude.Nothing,
       output = Prelude.Nothing, prompt = Prelude.Nothing,
       retrieval = Prelude.Nothing, storage = Prelude.Nothing}
instance ToResourceProperties FlowNodeConfigurationProperty where
  toResourceProperties FlowNodeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Flow.FlowNodeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Agent" Prelude.<$> agent,
                            (JSON..=) "Collector" Prelude.<$> collector,
                            (JSON..=) "Condition" Prelude.<$> condition,
                            (JSON..=) "Input" Prelude.<$> input,
                            (JSON..=) "Iterator" Prelude.<$> iterator,
                            (JSON..=) "KnowledgeBase" Prelude.<$> knowledgeBase,
                            (JSON..=) "LambdaFunction" Prelude.<$> lambdaFunction,
                            (JSON..=) "Lex" Prelude.<$> lex,
                            (JSON..=) "Output" Prelude.<$> output,
                            (JSON..=) "Prompt" Prelude.<$> prompt,
                            (JSON..=) "Retrieval" Prelude.<$> retrieval,
                            (JSON..=) "Storage" Prelude.<$> storage])}
instance JSON.ToJSON FlowNodeConfigurationProperty where
  toJSON FlowNodeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Agent" Prelude.<$> agent,
               (JSON..=) "Collector" Prelude.<$> collector,
               (JSON..=) "Condition" Prelude.<$> condition,
               (JSON..=) "Input" Prelude.<$> input,
               (JSON..=) "Iterator" Prelude.<$> iterator,
               (JSON..=) "KnowledgeBase" Prelude.<$> knowledgeBase,
               (JSON..=) "LambdaFunction" Prelude.<$> lambdaFunction,
               (JSON..=) "Lex" Prelude.<$> lex,
               (JSON..=) "Output" Prelude.<$> output,
               (JSON..=) "Prompt" Prelude.<$> prompt,
               (JSON..=) "Retrieval" Prelude.<$> retrieval,
               (JSON..=) "Storage" Prelude.<$> storage]))
instance Property "Agent" FlowNodeConfigurationProperty where
  type PropertyType "Agent" FlowNodeConfigurationProperty = AgentFlowNodeConfigurationProperty
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty {agent = Prelude.pure newValue, ..}
instance Property "Collector" FlowNodeConfigurationProperty where
  type PropertyType "Collector" FlowNodeConfigurationProperty = JSON.Object
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty
        {collector = Prelude.pure newValue, ..}
instance Property "Condition" FlowNodeConfigurationProperty where
  type PropertyType "Condition" FlowNodeConfigurationProperty = ConditionFlowNodeConfigurationProperty
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty
        {condition = Prelude.pure newValue, ..}
instance Property "Input" FlowNodeConfigurationProperty where
  type PropertyType "Input" FlowNodeConfigurationProperty = JSON.Object
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty {input = Prelude.pure newValue, ..}
instance Property "Iterator" FlowNodeConfigurationProperty where
  type PropertyType "Iterator" FlowNodeConfigurationProperty = JSON.Object
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty
        {iterator = Prelude.pure newValue, ..}
instance Property "KnowledgeBase" FlowNodeConfigurationProperty where
  type PropertyType "KnowledgeBase" FlowNodeConfigurationProperty = KnowledgeBaseFlowNodeConfigurationProperty
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty
        {knowledgeBase = Prelude.pure newValue, ..}
instance Property "LambdaFunction" FlowNodeConfigurationProperty where
  type PropertyType "LambdaFunction" FlowNodeConfigurationProperty = LambdaFunctionFlowNodeConfigurationProperty
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty
        {lambdaFunction = Prelude.pure newValue, ..}
instance Property "Lex" FlowNodeConfigurationProperty where
  type PropertyType "Lex" FlowNodeConfigurationProperty = LexFlowNodeConfigurationProperty
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty {lex = Prelude.pure newValue, ..}
instance Property "Output" FlowNodeConfigurationProperty where
  type PropertyType "Output" FlowNodeConfigurationProperty = JSON.Object
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty
        {output = Prelude.pure newValue, ..}
instance Property "Prompt" FlowNodeConfigurationProperty where
  type PropertyType "Prompt" FlowNodeConfigurationProperty = PromptFlowNodeConfigurationProperty
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty
        {prompt = Prelude.pure newValue, ..}
instance Property "Retrieval" FlowNodeConfigurationProperty where
  type PropertyType "Retrieval" FlowNodeConfigurationProperty = RetrievalFlowNodeConfigurationProperty
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty
        {retrieval = Prelude.pure newValue, ..}
instance Property "Storage" FlowNodeConfigurationProperty where
  type PropertyType "Storage" FlowNodeConfigurationProperty = StorageFlowNodeConfigurationProperty
  set newValue FlowNodeConfigurationProperty {..}
    = FlowNodeConfigurationProperty
        {storage = Prelude.pure newValue, ..}