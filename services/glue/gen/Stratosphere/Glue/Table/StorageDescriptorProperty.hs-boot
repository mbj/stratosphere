module Stratosphere.Glue.Table.StorageDescriptorProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data StorageDescriptorProperty :: Prelude.Type
instance ToResourceProperties StorageDescriptorProperty
instance JSON.ToJSON StorageDescriptorProperty