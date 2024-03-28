module Stratosphere.S3.AccessGrant.GranteeProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data GranteeProperty :: Prelude.Type
instance ToResourceProperties GranteeProperty
instance Prelude.Eq GranteeProperty
instance Prelude.Show GranteeProperty
instance JSON.ToJSON GranteeProperty