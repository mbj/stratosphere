module Stratosphere.Lightsail.Domain.DomainEntryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DomainEntryProperty :: Prelude.Type
instance ToResourceProperties DomainEntryProperty
instance Prelude.Eq DomainEntryProperty
instance Prelude.Show DomainEntryProperty
instance JSON.ToJSON DomainEntryProperty