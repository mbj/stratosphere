module Stratosphere.CloudFront.Distribution.OriginShieldProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OriginShieldProperty :: Prelude.Type
instance ToResourceProperties OriginShieldProperty
instance JSON.ToJSON OriginShieldProperty