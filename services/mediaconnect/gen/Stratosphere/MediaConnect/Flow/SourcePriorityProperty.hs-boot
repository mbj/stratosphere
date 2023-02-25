module Stratosphere.MediaConnect.Flow.SourcePriorityProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SourcePriorityProperty :: Prelude.Type
instance ToResourceProperties SourcePriorityProperty
instance JSON.ToJSON SourcePriorityProperty