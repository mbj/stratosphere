module Stratosphere.Config.ConfigurationRecorder.RecordingStrategyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RecordingStrategyProperty :: Prelude.Type
instance ToResourceProperties RecordingStrategyProperty
instance Prelude.Eq RecordingStrategyProperty
instance Prelude.Show RecordingStrategyProperty
instance JSON.ToJSON RecordingStrategyProperty