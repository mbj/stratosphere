module Stratosphere.EC2.LaunchTemplate.MetadataOptionsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data MetadataOptionsProperty :: Prelude.Type
instance ToResourceProperties MetadataOptionsProperty
instance JSON.ToJSON MetadataOptionsProperty