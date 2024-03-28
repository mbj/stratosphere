module Stratosphere.CustomerProfiles.Domain.DomainStatsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DomainStatsProperty :: Prelude.Type
instance ToResourceProperties DomainStatsProperty
instance Prelude.Eq DomainStatsProperty
instance Prelude.Show DomainStatsProperty
instance JSON.ToJSON DomainStatsProperty