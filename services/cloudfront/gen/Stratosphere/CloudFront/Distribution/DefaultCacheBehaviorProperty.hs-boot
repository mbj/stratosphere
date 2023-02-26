module Stratosphere.CloudFront.Distribution.DefaultCacheBehaviorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DefaultCacheBehaviorProperty :: Prelude.Type
instance ToResourceProperties DefaultCacheBehaviorProperty
instance JSON.ToJSON DefaultCacheBehaviorProperty