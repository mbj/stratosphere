module Stratosphere.EC2.LaunchTemplate.VCpuCountProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data VCpuCountProperty :: Prelude.Type
instance ToResourceProperties VCpuCountProperty
instance JSON.ToJSON VCpuCountProperty