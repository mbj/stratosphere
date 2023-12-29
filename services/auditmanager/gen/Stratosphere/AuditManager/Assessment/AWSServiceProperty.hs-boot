module Stratosphere.AuditManager.Assessment.AWSServiceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AWSServiceProperty :: Prelude.Type
instance ToResourceProperties AWSServiceProperty
instance Prelude.Eq AWSServiceProperty
instance Prelude.Show AWSServiceProperty
instance JSON.ToJSON AWSServiceProperty