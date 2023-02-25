module Stratosphere.AppSync.Resolver.CachingConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CachingConfigProperty :: Prelude.Type
instance ToResourceProperties CachingConfigProperty
instance JSON.ToJSON CachingConfigProperty