module Stratosphere.Bedrock.Prompt.ContentBlockProperty (
        module Exports, ContentBlockProperty(..), mkContentBlockProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.CachePointBlockProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ContentBlockProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-contentblock.html>
    ContentBlockProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-contentblock.html#cfn-bedrock-prompt-contentblock-cachepoint>
                          cachePoint :: (Prelude.Maybe CachePointBlockProperty),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-contentblock.html#cfn-bedrock-prompt-contentblock-text>
                          text :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentBlockProperty :: ContentBlockProperty
mkContentBlockProperty
  = ContentBlockProperty
      {haddock_workaround_ = (), cachePoint = Prelude.Nothing,
       text = Prelude.Nothing}
instance ToResourceProperties ContentBlockProperty where
  toResourceProperties ContentBlockProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.ContentBlock",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CachePoint" Prelude.<$> cachePoint,
                            (JSON..=) "Text" Prelude.<$> text])}
instance JSON.ToJSON ContentBlockProperty where
  toJSON ContentBlockProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CachePoint" Prelude.<$> cachePoint,
               (JSON..=) "Text" Prelude.<$> text]))
instance Property "CachePoint" ContentBlockProperty where
  type PropertyType "CachePoint" ContentBlockProperty = CachePointBlockProperty
  set newValue ContentBlockProperty {..}
    = ContentBlockProperty {cachePoint = Prelude.pure newValue, ..}
instance Property "Text" ContentBlockProperty where
  type PropertyType "Text" ContentBlockProperty = Value Prelude.Text
  set newValue ContentBlockProperty {..}
    = ContentBlockProperty {text = Prelude.pure newValue, ..}