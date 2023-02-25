module Stratosphere.AuditManager.Assessment.AWSAccountProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AWSAccountProperty :: Prelude.Type
instance ToResourceProperties AWSAccountProperty
instance JSON.ToJSON AWSAccountProperty