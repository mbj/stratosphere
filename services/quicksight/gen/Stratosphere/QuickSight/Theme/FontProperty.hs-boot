module Stratosphere.QuickSight.Theme.FontProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data FontProperty :: Prelude.Type
instance ToResourceProperties FontProperty
instance JSON.ToJSON FontProperty