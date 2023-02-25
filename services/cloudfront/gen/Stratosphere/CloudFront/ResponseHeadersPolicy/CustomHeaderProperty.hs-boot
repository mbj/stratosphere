module Stratosphere.CloudFront.ResponseHeadersPolicy.CustomHeaderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomHeaderProperty :: Prelude.Type
instance ToResourceProperties CustomHeaderProperty
instance JSON.ToJSON CustomHeaderProperty