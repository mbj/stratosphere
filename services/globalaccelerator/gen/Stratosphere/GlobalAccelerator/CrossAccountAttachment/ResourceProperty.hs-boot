module Stratosphere.GlobalAccelerator.CrossAccountAttachment.ResourceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ResourceProperty :: Prelude.Type
instance ToResourceProperties ResourceProperty
instance Prelude.Eq ResourceProperty
instance Prelude.Show ResourceProperty
instance JSON.ToJSON ResourceProperty