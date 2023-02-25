module Stratosphere.Connect.Rule.ReferenceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReferenceProperty :: Prelude.Type
instance ToResourceProperties ReferenceProperty
instance JSON.ToJSON ReferenceProperty