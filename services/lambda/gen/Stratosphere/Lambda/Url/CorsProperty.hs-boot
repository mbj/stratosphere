module Stratosphere.Lambda.Url.CorsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CorsProperty :: Prelude.Type
instance ToResourceProperties CorsProperty
instance JSON.ToJSON CorsProperty