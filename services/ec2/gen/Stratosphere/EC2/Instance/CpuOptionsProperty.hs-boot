module Stratosphere.EC2.Instance.CpuOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CpuOptionsProperty :: Prelude.Type
instance ToResourceProperties CpuOptionsProperty
instance JSON.ToJSON CpuOptionsProperty