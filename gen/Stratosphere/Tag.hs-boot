module Stratosphere.Tag where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Tag :: Prelude.Type
instance ToResourceProperties Tag
instance JSON.ToJSON Tag