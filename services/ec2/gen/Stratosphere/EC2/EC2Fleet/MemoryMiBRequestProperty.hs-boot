module Stratosphere.EC2.EC2Fleet.MemoryMiBRequestProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MemoryMiBRequestProperty :: Prelude.Type
instance ToResourceProperties MemoryMiBRequestProperty
instance JSON.ToJSON MemoryMiBRequestProperty