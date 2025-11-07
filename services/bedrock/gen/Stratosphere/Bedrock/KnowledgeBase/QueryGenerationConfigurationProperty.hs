module Stratosphere.Bedrock.KnowledgeBase.QueryGenerationConfigurationProperty (
        module Exports, QueryGenerationConfigurationProperty(..),
        mkQueryGenerationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.KnowledgeBase.QueryGenerationContextProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data QueryGenerationConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationconfiguration.html>
    QueryGenerationConfigurationProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationconfiguration.html#cfn-bedrock-knowledgebase-querygenerationconfiguration-executiontimeoutseconds>
                                          executionTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-knowledgebase-querygenerationconfiguration.html#cfn-bedrock-knowledgebase-querygenerationconfiguration-generationcontext>
                                          generationContext :: (Prelude.Maybe QueryGenerationContextProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkQueryGenerationConfigurationProperty ::
  QueryGenerationConfigurationProperty
mkQueryGenerationConfigurationProperty
  = QueryGenerationConfigurationProperty
      {haddock_workaround_ = (),
       executionTimeoutSeconds = Prelude.Nothing,
       generationContext = Prelude.Nothing}
instance ToResourceProperties QueryGenerationConfigurationProperty where
  toResourceProperties QueryGenerationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::KnowledgeBase.QueryGenerationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExecutionTimeoutSeconds"
                              Prelude.<$> executionTimeoutSeconds,
                            (JSON..=) "GenerationContext" Prelude.<$> generationContext])}
instance JSON.ToJSON QueryGenerationConfigurationProperty where
  toJSON QueryGenerationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExecutionTimeoutSeconds"
                 Prelude.<$> executionTimeoutSeconds,
               (JSON..=) "GenerationContext" Prelude.<$> generationContext]))
instance Property "ExecutionTimeoutSeconds" QueryGenerationConfigurationProperty where
  type PropertyType "ExecutionTimeoutSeconds" QueryGenerationConfigurationProperty = Value Prelude.Integer
  set newValue QueryGenerationConfigurationProperty {..}
    = QueryGenerationConfigurationProperty
        {executionTimeoutSeconds = Prelude.pure newValue, ..}
instance Property "GenerationContext" QueryGenerationConfigurationProperty where
  type PropertyType "GenerationContext" QueryGenerationConfigurationProperty = QueryGenerationContextProperty
  set newValue QueryGenerationConfigurationProperty {..}
    = QueryGenerationConfigurationProperty
        {generationContext = Prelude.pure newValue, ..}