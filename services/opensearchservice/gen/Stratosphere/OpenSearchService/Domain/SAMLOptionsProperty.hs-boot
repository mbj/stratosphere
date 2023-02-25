module Stratosphere.OpenSearchService.Domain.SAMLOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SAMLOptionsProperty :: Prelude.Type
instance ToResourceProperties SAMLOptionsProperty
instance JSON.ToJSON SAMLOptionsProperty