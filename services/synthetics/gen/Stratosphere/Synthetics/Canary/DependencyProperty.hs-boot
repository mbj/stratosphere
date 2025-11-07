module Stratosphere.Synthetics.Canary.DependencyProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data DependencyProperty :: Prelude.Type
instance ToResourceProperties DependencyProperty
instance Prelude.Eq DependencyProperty
instance Prelude.Show DependencyProperty
instance JSON.ToJSON DependencyProperty