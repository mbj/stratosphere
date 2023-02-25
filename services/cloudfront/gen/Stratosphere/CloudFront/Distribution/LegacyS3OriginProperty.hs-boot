module Stratosphere.CloudFront.Distribution.LegacyS3OriginProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LegacyS3OriginProperty :: Prelude.Type
instance ToResourceProperties LegacyS3OriginProperty
instance JSON.ToJSON LegacyS3OriginProperty