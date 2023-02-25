module Stratosphere.S3.AccessPoint.PolicyStatusProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data PolicyStatusProperty :: Prelude.Type
instance ToResourceProperties PolicyStatusProperty
instance JSON.ToJSON PolicyStatusProperty