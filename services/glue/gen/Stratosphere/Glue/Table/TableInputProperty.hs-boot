module Stratosphere.Glue.Table.TableInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableInputProperty :: Prelude.Type
instance ToResourceProperties TableInputProperty
instance Prelude.Eq TableInputProperty
instance Prelude.Show TableInputProperty
instance JSON.ToJSON TableInputProperty