module Stratosphere.SageMaker.AppImageConfig.KernelSpecProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data KernelSpecProperty :: Prelude.Type
instance ToResourceProperties KernelSpecProperty
instance JSON.ToJSON KernelSpecProperty