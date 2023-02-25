module Stratosphere.EC2.Instance.EnclaveOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EnclaveOptionsProperty :: Prelude.Type
instance ToResourceProperties EnclaveOptionsProperty
instance JSON.ToJSON EnclaveOptionsProperty