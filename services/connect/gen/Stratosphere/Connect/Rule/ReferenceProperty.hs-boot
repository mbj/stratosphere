module Stratosphere.Connect.Rule.ReferenceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ReferenceProperty :: Prelude.Type
instance ToResourceProperties ReferenceProperty
instance Prelude.Eq ReferenceProperty
instance Prelude.Show ReferenceProperty
instance JSON.ToJSON ReferenceProperty