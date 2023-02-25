module Stratosphere.Glue.Table.TableInputProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TableInputProperty :: Prelude.Type
instance ToResourceProperties TableInputProperty
instance JSON.ToJSON TableInputProperty