module Stratosphere.AmplifyUIBuilder.Component.ComponentChildProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data ComponentChildProperty :: Prelude.Type
instance ToResourceProperties ComponentChildProperty
instance JSON.ToJSON ComponentChildProperty