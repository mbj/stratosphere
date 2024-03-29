module Stratosphere.EC2.LaunchTemplate.MemoryMiBProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MemoryMiBProperty :: Prelude.Type
instance ToResourceProperties MemoryMiBProperty
instance Prelude.Eq MemoryMiBProperty
instance Prelude.Show MemoryMiBProperty
instance JSON.ToJSON MemoryMiBProperty