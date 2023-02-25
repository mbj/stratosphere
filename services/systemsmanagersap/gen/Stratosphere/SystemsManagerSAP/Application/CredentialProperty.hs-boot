module Stratosphere.SystemsManagerSAP.Application.CredentialProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CredentialProperty :: Prelude.Type
instance ToResourceProperties CredentialProperty
instance JSON.ToJSON CredentialProperty