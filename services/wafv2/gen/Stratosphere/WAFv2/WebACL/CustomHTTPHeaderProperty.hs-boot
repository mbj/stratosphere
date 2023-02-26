module Stratosphere.WAFv2.WebACL.CustomHTTPHeaderProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CustomHTTPHeaderProperty :: Prelude.Type
instance ToResourceProperties CustomHTTPHeaderProperty
instance JSON.ToJSON CustomHTTPHeaderProperty