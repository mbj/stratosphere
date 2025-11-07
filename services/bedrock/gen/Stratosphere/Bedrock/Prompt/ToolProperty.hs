module Stratosphere.Bedrock.Prompt.ToolProperty (
        module Exports, ToolProperty(..), mkToolProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.CachePointBlockProperty as Exports
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.ToolSpecificationProperty as Exports
import Stratosphere.ResourceProperties
data ToolProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-tool.html>
    ToolProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-tool.html#cfn-bedrock-prompt-tool-cachepoint>
                  cachePoint :: (Prelude.Maybe CachePointBlockProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-tool.html#cfn-bedrock-prompt-tool-toolspec>
                  toolSpec :: (Prelude.Maybe ToolSpecificationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkToolProperty :: ToolProperty
mkToolProperty
  = ToolProperty
      {haddock_workaround_ = (), cachePoint = Prelude.Nothing,
       toolSpec = Prelude.Nothing}
instance ToResourceProperties ToolProperty where
  toResourceProperties ToolProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.Tool",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CachePoint" Prelude.<$> cachePoint,
                            (JSON..=) "ToolSpec" Prelude.<$> toolSpec])}
instance JSON.ToJSON ToolProperty where
  toJSON ToolProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CachePoint" Prelude.<$> cachePoint,
               (JSON..=) "ToolSpec" Prelude.<$> toolSpec]))
instance Property "CachePoint" ToolProperty where
  type PropertyType "CachePoint" ToolProperty = CachePointBlockProperty
  set newValue ToolProperty {..}
    = ToolProperty {cachePoint = Prelude.pure newValue, ..}
instance Property "ToolSpec" ToolProperty where
  type PropertyType "ToolSpec" ToolProperty = ToolSpecificationProperty
  set newValue ToolProperty {..}
    = ToolProperty {toolSpec = Prelude.pure newValue, ..}