module Stratosphere.CloudFront.Distribution.RestrictionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RestrictionsProperty :: Prelude.Type
instance ToResourceProperties RestrictionsProperty
instance JSON.ToJSON RestrictionsProperty