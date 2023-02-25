module Stratosphere.IoT.JobTemplate.TimeoutConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data TimeoutConfigProperty :: Prelude.Type
instance ToResourceProperties TimeoutConfigProperty
instance JSON.ToJSON TimeoutConfigProperty