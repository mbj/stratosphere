module Stratosphere.WAFv2.WebACL.UriFragmentProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data UriFragmentProperty :: Prelude.Type
instance ToResourceProperties UriFragmentProperty
instance Prelude.Eq UriFragmentProperty
instance Prelude.Show UriFragmentProperty
instance JSON.ToJSON UriFragmentProperty