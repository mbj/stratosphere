module Stratosphere.CloudFront.StreamingDistribution.LoggingProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoggingProperty :: Prelude.Type
instance ToResourceProperties LoggingProperty
instance Prelude.Eq LoggingProperty
instance Prelude.Show LoggingProperty
instance JSON.ToJSON LoggingProperty