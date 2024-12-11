module Stratosphere.Oam.Link.LinkFilterProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LinkFilterProperty :: Prelude.Type
instance ToResourceProperties LinkFilterProperty
instance Prelude.Eq LinkFilterProperty
instance Prelude.Show LinkFilterProperty
instance JSON.ToJSON LinkFilterProperty