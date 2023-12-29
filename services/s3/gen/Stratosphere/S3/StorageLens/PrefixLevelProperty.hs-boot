module Stratosphere.S3.StorageLens.PrefixLevelProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PrefixLevelProperty :: Prelude.Type
instance ToResourceProperties PrefixLevelProperty
instance Prelude.Eq PrefixLevelProperty
instance Prelude.Show PrefixLevelProperty
instance JSON.ToJSON PrefixLevelProperty