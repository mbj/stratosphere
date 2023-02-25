module Stratosphere.Lightsail.Instance.AddOnProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data AddOnProperty :: Prelude.Type
instance ToResourceProperties AddOnProperty
instance JSON.ToJSON AddOnProperty