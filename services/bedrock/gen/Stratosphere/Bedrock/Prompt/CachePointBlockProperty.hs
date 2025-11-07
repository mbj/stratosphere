module Stratosphere.Bedrock.Prompt.CachePointBlockProperty (
        CachePointBlockProperty(..), mkCachePointBlockProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CachePointBlockProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-cachepointblock.html>
    CachePointBlockProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-bedrock-prompt-cachepointblock.html#cfn-bedrock-prompt-cachepointblock-type>
                             type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCachePointBlockProperty ::
  Value Prelude.Text -> CachePointBlockProperty
mkCachePointBlockProperty type'
  = CachePointBlockProperty {haddock_workaround_ = (), type' = type'}
instance ToResourceProperties CachePointBlockProperty where
  toResourceProperties CachePointBlockProperty {..}
    = ResourceProperties
        {awsType = "AWS::Bedrock::Prompt.CachePointBlock",
         supportsTags = Prelude.False, properties = ["Type" JSON..= type']}
instance JSON.ToJSON CachePointBlockProperty where
  toJSON CachePointBlockProperty {..}
    = JSON.object ["Type" JSON..= type']
instance Property "Type" CachePointBlockProperty where
  type PropertyType "Type" CachePointBlockProperty = Value Prelude.Text
  set newValue CachePointBlockProperty {..}
    = CachePointBlockProperty {type' = newValue, ..}