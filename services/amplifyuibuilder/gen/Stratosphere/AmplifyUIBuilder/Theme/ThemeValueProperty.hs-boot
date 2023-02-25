module Stratosphere.AmplifyUIBuilder.Theme.ThemeValueProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ThemeValueProperty :: Prelude.Type
instance ToResourceProperties ThemeValueProperty
instance JSON.ToJSON ThemeValueProperty