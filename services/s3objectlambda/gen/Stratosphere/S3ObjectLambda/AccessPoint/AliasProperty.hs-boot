module Stratosphere.S3ObjectLambda.AccessPoint.AliasProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AliasProperty :: Prelude.Type
instance ToResourceProperties AliasProperty
instance JSON.ToJSON AliasProperty