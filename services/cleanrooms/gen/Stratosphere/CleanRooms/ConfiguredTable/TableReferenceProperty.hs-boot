module Stratosphere.CleanRooms.ConfiguredTable.TableReferenceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableReferenceProperty :: Prelude.Type
instance ToResourceProperties TableReferenceProperty
instance Prelude.Eq TableReferenceProperty
instance Prelude.Show TableReferenceProperty
instance JSON.ToJSON TableReferenceProperty