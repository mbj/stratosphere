module Stratosphere.CloudFront.Distribution.OriginProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OriginProperty :: Prelude.Type
instance ToResourceProperties OriginProperty
instance Prelude.Eq OriginProperty
instance Prelude.Show OriginProperty
instance JSON.ToJSON OriginProperty