module Stratosphere.OpenSearchService.Domain.JWTOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data JWTOptionsProperty :: Prelude.Type
instance ToResourceProperties JWTOptionsProperty
instance Prelude.Eq JWTOptionsProperty
instance Prelude.Show JWTOptionsProperty
instance JSON.ToJSON JWTOptionsProperty