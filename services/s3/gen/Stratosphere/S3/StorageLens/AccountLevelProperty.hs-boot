module Stratosphere.S3.StorageLens.AccountLevelProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AccountLevelProperty :: Prelude.Type
instance ToResourceProperties AccountLevelProperty
instance JSON.ToJSON AccountLevelProperty