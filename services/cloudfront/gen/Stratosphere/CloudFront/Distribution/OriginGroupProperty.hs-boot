module Stratosphere.CloudFront.Distribution.OriginGroupProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OriginGroupProperty :: Prelude.Type
instance ToResourceProperties OriginGroupProperty
instance JSON.ToJSON OriginGroupProperty