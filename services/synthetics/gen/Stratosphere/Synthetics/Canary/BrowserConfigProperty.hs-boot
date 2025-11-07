module Stratosphere.Synthetics.Canary.BrowserConfigProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data BrowserConfigProperty :: Prelude.Type
instance ToResourceProperties BrowserConfigProperty
instance Prelude.Eq BrowserConfigProperty
instance Prelude.Show BrowserConfigProperty
instance JSON.ToJSON BrowserConfigProperty