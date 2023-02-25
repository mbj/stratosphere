module Stratosphere.MediaConnect.Flow.FailoverConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FailoverConfigProperty :: Prelude.Type
instance ToResourceProperties FailoverConfigProperty
instance JSON.ToJSON FailoverConfigProperty