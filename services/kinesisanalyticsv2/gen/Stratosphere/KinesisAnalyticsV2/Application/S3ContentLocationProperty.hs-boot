module Stratosphere.KinesisAnalyticsV2.Application.S3ContentLocationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3ContentLocationProperty :: Prelude.Type
instance ToResourceProperties S3ContentLocationProperty
instance Prelude.Eq S3ContentLocationProperty
instance Prelude.Show S3ContentLocationProperty
instance JSON.ToJSON S3ContentLocationProperty