module Stratosphere.MediaConnect.Flow.SourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SourceProperty :: Prelude.Type
instance ToResourceProperties SourceProperty
instance JSON.ToJSON SourceProperty