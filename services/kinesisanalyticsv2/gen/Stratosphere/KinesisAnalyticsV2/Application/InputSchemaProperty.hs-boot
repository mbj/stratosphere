module Stratosphere.KinesisAnalyticsV2.Application.InputSchemaProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data InputSchemaProperty :: Prelude.Type
instance ToResourceProperties InputSchemaProperty
instance JSON.ToJSON InputSchemaProperty