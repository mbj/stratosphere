module Stratosphere.SecurityLake.DataLake.ExpirationProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ExpirationProperty :: Prelude.Type
instance ToResourceProperties ExpirationProperty
instance Prelude.Eq ExpirationProperty
instance Prelude.Show ExpirationProperty
instance JSON.ToJSON ExpirationProperty