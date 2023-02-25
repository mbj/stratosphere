module Stratosphere.AmplifyUIBuilder.Theme.ThemeValuesProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ThemeValuesProperty :: Prelude.Type
instance ToResourceProperties ThemeValuesProperty
instance JSON.ToJSON ThemeValuesProperty