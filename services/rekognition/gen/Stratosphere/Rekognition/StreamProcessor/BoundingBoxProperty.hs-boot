module Stratosphere.Rekognition.StreamProcessor.BoundingBoxProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BoundingBoxProperty :: Prelude.Type
instance ToResourceProperties BoundingBoxProperty
instance Prelude.Eq BoundingBoxProperty
instance Prelude.Show BoundingBoxProperty
instance JSON.ToJSON BoundingBoxProperty