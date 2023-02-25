module Stratosphere.RolesAnywhere.TrustAnchor.SourceDataProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data SourceDataProperty :: Prelude.Type
instance ToResourceProperties SourceDataProperty
instance JSON.ToJSON SourceDataProperty