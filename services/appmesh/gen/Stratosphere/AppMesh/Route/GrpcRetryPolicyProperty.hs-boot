module Stratosphere.AppMesh.Route.GrpcRetryPolicyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GrpcRetryPolicyProperty :: Prelude.Type
instance ToResourceProperties GrpcRetryPolicyProperty
instance Prelude.Eq GrpcRetryPolicyProperty
instance Prelude.Show GrpcRetryPolicyProperty
instance JSON.ToJSON GrpcRetryPolicyProperty