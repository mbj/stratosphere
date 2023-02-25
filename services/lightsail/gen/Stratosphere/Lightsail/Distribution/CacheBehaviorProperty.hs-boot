module Stratosphere.Lightsail.Distribution.CacheBehaviorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CacheBehaviorProperty :: Prelude.Type
instance ToResourceProperties CacheBehaviorProperty
instance JSON.ToJSON CacheBehaviorProperty