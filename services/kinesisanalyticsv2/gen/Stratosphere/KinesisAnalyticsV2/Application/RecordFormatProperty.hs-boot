module Stratosphere.KinesisAnalyticsV2.Application.RecordFormatProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecordFormatProperty :: Prelude.Type
instance ToResourceProperties RecordFormatProperty
instance JSON.ToJSON RecordFormatProperty