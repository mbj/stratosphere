module Stratosphere.Greengrass.CoreDefinition.CoreProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CoreProperty :: Prelude.Type
instance ToResourceProperties CoreProperty
instance Prelude.Eq CoreProperty
instance Prelude.Show CoreProperty
instance JSON.ToJSON CoreProperty