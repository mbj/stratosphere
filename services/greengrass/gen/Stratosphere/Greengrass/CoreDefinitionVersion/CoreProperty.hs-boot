module Stratosphere.Greengrass.CoreDefinitionVersion.CoreProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data CoreProperty :: Prelude.Type
instance ToResourceProperties CoreProperty
instance JSON.ToJSON CoreProperty