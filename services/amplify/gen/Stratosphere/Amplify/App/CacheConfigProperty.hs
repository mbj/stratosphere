module Stratosphere.Amplify.App.CacheConfigProperty (
        CacheConfigProperty(..), mkCacheConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CacheConfigProperty
  = CacheConfigProperty {type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCacheConfigProperty :: CacheConfigProperty
mkCacheConfigProperty
  = CacheConfigProperty {type' = Prelude.Nothing}
instance ToResourceProperties CacheConfigProperty where
  toResourceProperties CacheConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Amplify::App.CacheConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON CacheConfigProperty where
  toJSON CacheConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Type" Prelude.<$> type']))
instance Property "Type" CacheConfigProperty where
  type PropertyType "Type" CacheConfigProperty = Value Prelude.Text
  set newValue CacheConfigProperty {}
    = CacheConfigProperty {type' = Prelude.pure newValue, ..}