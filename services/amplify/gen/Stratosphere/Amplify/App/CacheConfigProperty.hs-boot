module Stratosphere.Amplify.App.CacheConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CacheConfigProperty :: Prelude.Type
instance ToResourceProperties CacheConfigProperty
instance Prelude.Eq CacheConfigProperty
instance Prelude.Show CacheConfigProperty
instance JSON.ToJSON CacheConfigProperty