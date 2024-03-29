module Stratosphere.AuditManager.Assessment.DelegationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DelegationProperty :: Prelude.Type
instance ToResourceProperties DelegationProperty
instance Prelude.Eq DelegationProperty
instance Prelude.Show DelegationProperty
instance JSON.ToJSON DelegationProperty