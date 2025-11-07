module Stratosphere.ODB.OdbNetwork.S3AccessProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data S3AccessProperty :: Prelude.Type
instance ToResourceProperties S3AccessProperty
instance Prelude.Eq S3AccessProperty
instance Prelude.Show S3AccessProperty
instance JSON.ToJSON S3AccessProperty