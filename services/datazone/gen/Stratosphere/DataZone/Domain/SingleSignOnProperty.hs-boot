module Stratosphere.DataZone.Domain.SingleSignOnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SingleSignOnProperty :: Prelude.Type
instance ToResourceProperties SingleSignOnProperty
instance Prelude.Eq SingleSignOnProperty
instance Prelude.Show SingleSignOnProperty
instance JSON.ToJSON SingleSignOnProperty