module Stratosphere.Events.Endpoint.PrimaryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PrimaryProperty :: Prelude.Type
instance ToResourceProperties PrimaryProperty
instance Prelude.Eq PrimaryProperty
instance Prelude.Show PrimaryProperty
instance JSON.ToJSON PrimaryProperty