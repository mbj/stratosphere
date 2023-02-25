module Stratosphere.IoTTwinMaker.Entity.RelationshipProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data RelationshipProperty :: Prelude.Type
instance ToResourceProperties RelationshipProperty
instance JSON.ToJSON RelationshipProperty