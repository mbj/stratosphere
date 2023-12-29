module Stratosphere.KinesisAnalyticsV2.Application.RecordColumnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecordColumnProperty :: Prelude.Type
instance ToResourceProperties RecordColumnProperty
instance Prelude.Eq RecordColumnProperty
instance Prelude.Show RecordColumnProperty
instance JSON.ToJSON RecordColumnProperty