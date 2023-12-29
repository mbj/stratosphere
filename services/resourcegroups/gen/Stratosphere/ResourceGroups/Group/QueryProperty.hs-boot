module Stratosphere.ResourceGroups.Group.QueryProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data QueryProperty :: Prelude.Type
instance ToResourceProperties QueryProperty
instance Prelude.Eq QueryProperty
instance Prelude.Show QueryProperty
instance JSON.ToJSON QueryProperty