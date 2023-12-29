module Stratosphere.KinesisAnalytics.ApplicationOutput.KinesisFirehoseOutputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KinesisFirehoseOutputProperty :: Prelude.Type
instance ToResourceProperties KinesisFirehoseOutputProperty
instance Prelude.Eq KinesisFirehoseOutputProperty
instance Prelude.Show KinesisFirehoseOutputProperty
instance JSON.ToJSON KinesisFirehoseOutputProperty