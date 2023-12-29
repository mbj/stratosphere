module Stratosphere.Events.Rule.TagProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Tag :: Prelude.Type
instance ToResourceProperties Tag
instance Prelude.Eq Tag
instance Prelude.Show Tag
instance JSON.ToJSON Tag