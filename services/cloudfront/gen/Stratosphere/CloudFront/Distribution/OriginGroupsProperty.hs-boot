module Stratosphere.CloudFront.Distribution.OriginGroupsProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data OriginGroupsProperty :: Prelude.Type
instance ToResourceProperties OriginGroupsProperty
instance JSON.ToJSON OriginGroupsProperty