module Stratosphere.QuickSight.DataSource.CredentialPairProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CredentialPairProperty :: Prelude.Type
instance ToResourceProperties CredentialPairProperty
instance JSON.ToJSON CredentialPairProperty