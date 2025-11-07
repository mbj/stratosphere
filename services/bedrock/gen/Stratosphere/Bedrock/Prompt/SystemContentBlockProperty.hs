module Stratosphere.Bedrock.Prompt.SystemContentBlockProperty (
        module Exports, SystemContentBlockProperty(..),
        mkSystemContentBlockProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Bedrock.Prompt.CachePointBlockProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SystemContentBlockProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-systemcontentblock.html>
    SystemContentBlockProperty {haddock_workaround_ :: (),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-systemcontentblock.html#cfn-bedrock-prompt-systemcontentblock-cachepoint>
                                cachePoint :: (Prelude.Maybe CachePointBlockProperty),
                                -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-systemcontentblock.html#cfn-bedrock-prompt-systemcontentblock-text>
                                text :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSystemContentBlockProperty :: SystemContentBlockProperty
mkSystemContentBlockProperty
  = SystemContentBlockProperty
      {haddock_workaround_ = (), cachePoint = Prelude.Nothing,
       text = Prelude.Nothing}
instance ToResourceProperties SystemContentBlockProperty where
  toResourceProperties SystemContentBlockProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.SystemContentBlock",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CachePoint" Prelude.<$> cachePoint,
                            (JSON..=) "Text" Prelude.<$> text])}
instance JSON.ToJSON SystemContentBlockProperty where
  toJSON SystemContentBlockProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CachePoint" Prelude.<$> cachePoint,
               (JSON..=) "Text" Prelude.<$> text]))
instance Property "CachePoint" SystemContentBlockProperty where
  type PropertyType "CachePoint" SystemContentBlockProperty = CachePointBlockProperty
  set newValue SystemContentBlockProperty {..}
    = SystemContentBlockProperty
        {cachePoint = Prelude.pure newValue, ..}
instance Property "Text" SystemContentBlockProperty where
  type PropertyType "Text" SystemContentBlockProperty = Value Prelude.Text
  set newValue SystemContentBlockProperty {..}
    = SystemContentBlockProperty {text = Prelude.pure newValue, ..}