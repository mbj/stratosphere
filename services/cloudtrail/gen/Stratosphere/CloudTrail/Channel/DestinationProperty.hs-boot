module Stratosphere.CloudTrail.Channel.DestinationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DestinationProperty :: Prelude.Type
instance ToResourceProperties DestinationProperty
instance JSON.ToJSON DestinationProperty