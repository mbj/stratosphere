module Stratosphere.IoT.Command.CommandPayloadProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CommandPayloadProperty :: Prelude.Type
instance ToResourceProperties CommandPayloadProperty
instance Prelude.Eq CommandPayloadProperty
instance Prelude.Show CommandPayloadProperty
instance JSON.ToJSON CommandPayloadProperty